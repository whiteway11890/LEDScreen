#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-Release.mk)" "nbproject/Makefile-local-Release.mk"
include nbproject/Makefile-local-Release.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=Release
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/LEDScreen.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/LEDScreen.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../Source/main.cpp ../../Source/Screen.cpp ../../Source/Images/LargeHeart.cpp ../../Source/Images/MediumHeart.cpp ../../Source/Images/SmallHeart.cpp ../../Source/Images/NoHeart.cpp

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1787047461/main.o ${OBJECTDIR}/_ext/1787047461/Screen.o ${OBJECTDIR}/_ext/1181532492/LargeHeart.o ${OBJECTDIR}/_ext/1181532492/MediumHeart.o ${OBJECTDIR}/_ext/1181532492/SmallHeart.o ${OBJECTDIR}/_ext/1181532492/NoHeart.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1787047461/main.o.d ${OBJECTDIR}/_ext/1787047461/Screen.o.d ${OBJECTDIR}/_ext/1181532492/LargeHeart.o.d ${OBJECTDIR}/_ext/1181532492/MediumHeart.o.d ${OBJECTDIR}/_ext/1181532492/SmallHeart.o.d ${OBJECTDIR}/_ext/1181532492/NoHeart.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1787047461/main.o ${OBJECTDIR}/_ext/1787047461/Screen.o ${OBJECTDIR}/_ext/1181532492/LargeHeart.o ${OBJECTDIR}/_ext/1181532492/MediumHeart.o ${OBJECTDIR}/_ext/1181532492/SmallHeart.o ${OBJECTDIR}/_ext/1181532492/NoHeart.o

# Source Files
SOURCEFILES=../../Source/main.cpp ../../Source/Screen.cpp ../../Source/Images/LargeHeart.cpp ../../Source/Images/MediumHeart.cpp ../../Source/Images/SmallHeart.cpp ../../Source/Images/NoHeart.cpp



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-Release.mk dist/${CND_CONF}/${IMAGE_TYPE}/LEDScreen.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048ECM064
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1787047461/main.o: ../../Source/main.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1787047461" 
	@${RM} ${OBJECTDIR}/_ext/1787047461/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1787047461/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1787047461/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O2 -funroll-loops -I"../../Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1787047461/main.o.d" -o ${OBJECTDIR}/_ext/1787047461/main.o ../../Source/main.cpp   -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1787047461/Screen.o: ../../Source/Screen.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1787047461" 
	@${RM} ${OBJECTDIR}/_ext/1787047461/Screen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1787047461/Screen.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1787047461/Screen.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O2 -funroll-loops -I"../../Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1787047461/Screen.o.d" -o ${OBJECTDIR}/_ext/1787047461/Screen.o ../../Source/Screen.cpp   -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1181532492/LargeHeart.o: ../../Source/Images/LargeHeart.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1181532492" 
	@${RM} ${OBJECTDIR}/_ext/1181532492/LargeHeart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1181532492/LargeHeart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1181532492/LargeHeart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O2 -funroll-loops -I"../../Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1181532492/LargeHeart.o.d" -o ${OBJECTDIR}/_ext/1181532492/LargeHeart.o ../../Source/Images/LargeHeart.cpp   -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1181532492/MediumHeart.o: ../../Source/Images/MediumHeart.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1181532492" 
	@${RM} ${OBJECTDIR}/_ext/1181532492/MediumHeart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1181532492/MediumHeart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1181532492/MediumHeart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O2 -funroll-loops -I"../../Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1181532492/MediumHeart.o.d" -o ${OBJECTDIR}/_ext/1181532492/MediumHeart.o ../../Source/Images/MediumHeart.cpp   -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1181532492/SmallHeart.o: ../../Source/Images/SmallHeart.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1181532492" 
	@${RM} ${OBJECTDIR}/_ext/1181532492/SmallHeart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1181532492/SmallHeart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1181532492/SmallHeart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O2 -funroll-loops -I"../../Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1181532492/SmallHeart.o.d" -o ${OBJECTDIR}/_ext/1181532492/SmallHeart.o ../../Source/Images/SmallHeart.cpp   -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1181532492/NoHeart.o: ../../Source/Images/NoHeart.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1181532492" 
	@${RM} ${OBJECTDIR}/_ext/1181532492/NoHeart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1181532492/NoHeart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1181532492/NoHeart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O2 -funroll-loops -I"../../Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1181532492/NoHeart.o.d" -o ${OBJECTDIR}/_ext/1181532492/NoHeart.o ../../Source/Images/NoHeart.cpp   -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
else
${OBJECTDIR}/_ext/1787047461/main.o: ../../Source/main.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1787047461" 
	@${RM} ${OBJECTDIR}/_ext/1787047461/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1787047461/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1787047461/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O2 -funroll-loops -I"../../Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1787047461/main.o.d" -o ${OBJECTDIR}/_ext/1787047461/main.o ../../Source/main.cpp   -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1787047461/Screen.o: ../../Source/Screen.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1787047461" 
	@${RM} ${OBJECTDIR}/_ext/1787047461/Screen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1787047461/Screen.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1787047461/Screen.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O2 -funroll-loops -I"../../Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1787047461/Screen.o.d" -o ${OBJECTDIR}/_ext/1787047461/Screen.o ../../Source/Screen.cpp   -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1181532492/LargeHeart.o: ../../Source/Images/LargeHeart.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1181532492" 
	@${RM} ${OBJECTDIR}/_ext/1181532492/LargeHeart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1181532492/LargeHeart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1181532492/LargeHeart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O2 -funroll-loops -I"../../Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1181532492/LargeHeart.o.d" -o ${OBJECTDIR}/_ext/1181532492/LargeHeart.o ../../Source/Images/LargeHeart.cpp   -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1181532492/MediumHeart.o: ../../Source/Images/MediumHeart.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1181532492" 
	@${RM} ${OBJECTDIR}/_ext/1181532492/MediumHeart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1181532492/MediumHeart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1181532492/MediumHeart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O2 -funroll-loops -I"../../Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1181532492/MediumHeart.o.d" -o ${OBJECTDIR}/_ext/1181532492/MediumHeart.o ../../Source/Images/MediumHeart.cpp   -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1181532492/SmallHeart.o: ../../Source/Images/SmallHeart.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1181532492" 
	@${RM} ${OBJECTDIR}/_ext/1181532492/SmallHeart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1181532492/SmallHeart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1181532492/SmallHeart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O2 -funroll-loops -I"../../Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1181532492/SmallHeart.o.d" -o ${OBJECTDIR}/_ext/1181532492/SmallHeart.o ../../Source/Images/SmallHeart.cpp   -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
${OBJECTDIR}/_ext/1181532492/NoHeart.o: ../../Source/Images/NoHeart.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1181532492" 
	@${RM} ${OBJECTDIR}/_ext/1181532492/NoHeart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1181532492/NoHeart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1181532492/NoHeart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O2 -funroll-loops -I"../../Include" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1181532492/NoHeart.o.d" -o ${OBJECTDIR}/_ext/1181532492/NoHeart.o ../../Source/Images/NoHeart.cpp   -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp=${DFP_DIR}
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/LEDScreen.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CPPC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/LEDScreen.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x27F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp=${DFP_DIR}
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/LEDScreen.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CPPC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/LEDScreen.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_Release=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp=${DFP_DIR}
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/LEDScreen.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/Release
	${RM} -r dist/Release

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
