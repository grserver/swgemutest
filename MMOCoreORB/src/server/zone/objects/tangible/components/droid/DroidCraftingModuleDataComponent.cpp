/*
 * Copyright (C) 2014 <SWGEmu>
 * This File is part of Core3.
 * This program is free software; you can redistribute
 * it and/or modify it under the terms of the GNU Lesser
 * General Public License as published by the Free Software
 * Foundation; either version 2 of the License,
 * or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU Lesser General Public License for
 * more details.
 *
 * You should have received a copy of the GNU Lesser General
 * Public License along with this program; if not, write to
 * the Free Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA
 *
 * Linking Engine3 statically or dynamically with other modules
 * is making a combined work based on Engine3.
 * Thus, the terms and conditions of the GNU Lesser General Public License
 * cover the whole combination.
 *
 * In addition, as a special exception, the copyright holders of Engine3
 * give you permission to combine Engine3 program with free software
 * programs or libraries that are released under the GNU LGPL and with
 * code included in the standard release of Core3 under the GNU LGPL
 * license (or modified versions of such code, with unchanged license).
 * You may copy and distribute such a system following the terms of the
 * GNU LGPL for Engine3 and the licenses of the other code concerned,
 * provided that you include the source code of that other code when
 * and as the GNU LGPL requires distribution of source code.
 *
 * Note that people who make modified versions of Engine3 are not obligated
 * to grant this special exception for their modified versions;
 * it is their choice whether to do so. The GNU Lesser General Public License
 * gives permission to release a modified version without this exception;
 * this exception also makes it possible to release a modified version
 * which carries forward this exception.
 */

#include "DroidCraftingModuleDataComponent.h"
#include "server/zone/objects/tangible/tool/CraftingTool.h"
#include "server/zone/ZoneServer.h"
#include "server/zone/templates/tangible/DroidCraftingModuleTemplate.h"

DroidCraftingModuleDataComponent::DroidCraftingModuleDataComponent() {
	setLoggingName("DroidCraftingModule");
}
DroidCraftingModuleDataComponent::~DroidCraftingModuleDataComponent() {

}
String DroidCraftingModuleDataComponent::getModuleName() {
	if (isClothingArmor())
		return "crafting_clothing";
	if(isWeaponDroidGeneric())
		return "crafting_weapon";
	if(isFoodChemical())
		return "crafting_food";
	if(isStructureFurniture())
		return "crafting_structure";
	if(isShip())
		return "crafting_ship";
}
void DroidCraftingModuleDataComponent::initializeTransientMembers() {
	// load template data here
	SceneObject* craftedModule = getParent();
	if (craftedModule == NULL) {
		return;
	}
	craftingStation = NULL;
	ManagedReference<DroidCraftingModuleTemplate*> moduleTemplate = cast<DroidCraftingModuleTemplate*>(craftedModule->getObjectTemplate());
	if (moduleTemplate == NULL){
		info("Module was null");
		return;
	}
	craftingType = moduleTemplate->getCraftingType();
	attributeListString = moduleTemplate->getAttributeListString();
}
void DroidCraftingModuleDataComponent::initialize(CreatureObject* droid) {
	// do we need to change any droid stats: no
}
void DroidCraftingModuleDataComponent::fillAttributeList(AttributeListMessage* alm, CreatureObject* droid) {
	alm->insertAttribute(attributeListString, "Installed");
}
void DroidCraftingModuleDataComponent::fillObjectMenuResponse(SceneObject* droidObject, ObjectMenuResponse* menuResponse, CreatureObject* player) {
	// no menu options
}
int DroidCraftingModuleDataComponent::handleObjectMenuSelect(CreatureObject* player, byte selectedID, PetControlDevice* controller) {
	// no menu options
	return 0;
}
void DroidCraftingModuleDataComponent::loadSkillMods(CreatureObject* player) {
	// no op
}
void DroidCraftingModuleDataComponent::unloadSkillMods(CreatureObject* player) {
	// no op
}
bool DroidCraftingModuleDataComponent::skillsByRange() {
	// no op
	return false;
}
void DroidCraftingModuleDataComponent::handlePetCommand(String cmd, CreatureObject* owner) {
	// no op
}
int DroidCraftingModuleDataComponent::getBatteryDrain() {
	return 0;
}
void DroidCraftingModuleDataComponent::deactivate() {
	// no op
}
bool DroidCraftingModuleDataComponent::actsAsCraftingStation(){
	return true;
}
String DroidCraftingModuleDataComponent::toString(){
	return BaseDroidModuleComponent::toString();
}
// crafting droid module specific
CraftingStation* DroidCraftingModuleDataComponent::getCraftingStation(){
	return craftingStation;
}
bool DroidCraftingModuleDataComponent::isWeaponDroidGeneric(){
	return craftingType == CraftingTool::WEAPON;
}
bool DroidCraftingModuleDataComponent::isFoodChemical(){
	return craftingType == CraftingTool::FOOD;
}
bool DroidCraftingModuleDataComponent::isClothingArmor(){
	return craftingType == CraftingTool::CLOTHING;
}
bool DroidCraftingModuleDataComponent::isStructureFurniture(){
	return craftingType == CraftingTool::STRUCTURE;
}
bool DroidCraftingModuleDataComponent::isShip(){
	return craftingType == CraftingTool::SPACE;
}
bool DroidCraftingModuleDataComponent::validCraftingType(int type) {
	return craftingType == type;
}
void DroidCraftingModuleDataComponent::onCall() {
	SceneObject* craftedModule = getParent();
	ManagedReference<DroidCraftingModuleTemplate*> moduleTemplate = cast<DroidCraftingModuleTemplate*>(craftedModule->getObjectTemplate());
	if( craftingStation == NULL ){
		String stationTemplate = moduleTemplate->getCraftingStationTemplate();
		craftingStation = (craftedModule->getZoneServer()->createObject(stationTemplate.hashCode(), 0)).castTo<CraftingStation*>();
		craftingStation->setEffectiveness(25);
	}
}
void DroidCraftingModuleDataComponent::onStore() {
	craftingStation = NULL;
}

void DroidCraftingModuleDataComponent::copy(BaseDroidModuleComponent* other) {
	// no Op when the new object is made, init transient is called so all info is set.
}

