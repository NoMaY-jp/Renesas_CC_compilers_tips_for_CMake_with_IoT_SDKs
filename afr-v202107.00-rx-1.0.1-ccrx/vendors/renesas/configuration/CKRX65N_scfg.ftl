<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<smc>
<general version="2.0.0.0">
<configuration active="true" id="${configurationTypeReleaseID}">
<property id="com.renesas.smc.service.project.buildArtefactType" values="com.renesas.smc.service.project.buildArtefactType.exe"/>
<toolchain id="${toolChainID}">
<option id="com.renesas.smc.toolchain.option.buildArtefactType" key="com.renesas.smc.toolchain.option.buildArtefactType.exe"/>
<option id="com.renesas.smc.toolchain.option.rtos" key="com.renesas.smc.toolchain.option.rtos.freertos">
<item id="com.renesas.smc.toolchain.option.rtos.freertos" value="AmazonFreeRTOS_RX_${packageVersion}"/>
</option>
</toolchain>
</configuration>
<platform id="${targetDevice}"/>
<option id="board" value="Custom User Board"/>
</general>
    <tool id="Clock">
        <option enabled="true" id="vccinput" selection="textinputitem">
            <item enabled="true" id="textinputitem" input="3.3" value="3.300"/>
        </option>
        <option enabled="true" id="mainclockenable" selection="check">
            <item enabled="true" id="check"/>
            <item enabled="true" id="uncheck"/>
        </option>
        <option enabled="true" id="mainsourcebox" selection="srcR">
            <item enabled="true" id="srcR"/>
            <item enabled="true" id="srcEOI"/>
        </option>
        <option enabled="true" id="mainfrequency" selection="textinputitem">
            <item enabled="true" id="textinputitem" input="24" value="24.000000"/>
        </option>
        <option enabled="true" id="mainwaittime" selection="textinputitem">
            <item enabled="true" id="textinputitem" input="9980" value="9980.000000"/>
        </option>
        <option enabled="true" id="subclockenable" selection="uncheck">
            <item enabled="true" id="check"/>
            <item enabled="true" id="uncheck"/>
        </option>
        <option enabled="false" id="subfrequency" selection="textinputitem">
            <item enabled="true" id="textinputitem" input="" value="32.768"/>
        </option>
        <option enabled="false" id="subdrivecap" selection="standardCL">
            <item enabled="true" id="standardCL"/>
            <item enabled="true" id="lowCL"/>
        </option>
        <option enabled="false" id="subwaittime" selection="textinputitem">
            <item enabled="true" id="textinputitem" input="2000" value="2000.000000"/>
        </option>
        <option enabled="true" id="hococlockenable" selection="uncheck">
            <item enabled="true" id="check"/>
            <item enabled="true" id="uncheck"/>
        </option>
        <option enabled="false" id="hocooscenable" selection="uncheck">
            <item enabled="true" id="check"/>
            <item enabled="true" id="uncheck"/>
        </option>
        <option enabled="false" id="hocofrequency" selection="frq20">
            <item enabled="true" id="frq16"/>
            <item enabled="true" id="frq18"/>
            <item enabled="true" id="frq20"/>
        </option>
        <option enabled="true" id="lococlockenable" selection="uncheck">
            <item enabled="true" id="check"/>
            <item enabled="true" id="uncheck"/>
        </option>
        <option enabled="false" id="locofrequency" selection="textinputitem">
            <item enabled="true" id="textinputitem" input="" value="240"/>
        </option>
        <option enabled="true" id="iwdtclockenable" selection="uncheck">
            <item enabled="true" id="check"/>
            <item enabled="true" id="uncheck"/>
        </option>
        <option enabled="false" id="iwdtfrequency" selection="textinputitem">
            <item enabled="true" id="textinputitem" input="" value="120"/>
        </option>
        <option enabled="true" id="pllswitcher" selection="pllmain">
            <item enabled="true" id="pllmain" input="" value="24.0"/>
            <item enabled="false" id="pllhoco" input="" value="20"/>
        </option>
        <option enabled="true" id="plldivider" selection="div1-1">
            <item enabled="true" id="div1-1"/>
            <item enabled="true" id="div1-2"/>
            <item enabled="true" id="div1-3"/>
        </option>
        <option enabled="true" id="pllmul" selection="mul10-1">
            <item enabled="true" id="mul10-1"/>
            <item enabled="false" id="mul10_5-1"/>
            <item enabled="false" id="mul11-1"/>
            <item enabled="false" id="mul11_5-1"/>
            <item enabled="false" id="mul12-1"/>
            <item enabled="false" id="mul12_5-1"/>
            <item enabled="false" id="mul13-1"/>
            <item enabled="false" id="mul13_5-1"/>
            <item enabled="false" id="mul14-1"/>
            <item enabled="false" id="mul14_5-1"/>
            <item enabled="false" id="mul15-1"/>
            <item enabled="false" id="mul15_5-1"/>
            <item enabled="false" id="mul16-1"/>
            <item enabled="false" id="mul16_5-1"/>
            <item enabled="false" id="mul17-1"/>
            <item enabled="false" id="mul17_5-1"/>
            <item enabled="false" id="mul18-1"/>
            <item enabled="false" id="mul18_5-1"/>
            <item enabled="false" id="mul19-1"/>
            <item enabled="false" id="mul19_5-1"/>
            <item enabled="false" id="mul20-1"/>
            <item enabled="false" id="mul20_5-1"/>
            <item enabled="false" id="mul21-1"/>
            <item enabled="false" id="mul21_5-1"/>
            <item enabled="false" id="mul22-1"/>
            <item enabled="false" id="mul22_5-1"/>
            <item enabled="false" id="mul23-1"/>
            <item enabled="false" id="mul23_5-1"/>
            <item enabled="false" id="mul24-1"/>
            <item enabled="false" id="mul24_5-1"/>
            <item enabled="false" id="mul25-1"/>
            <item enabled="false" id="mul25_5-1"/>
            <item enabled="false" id="mul26-1"/>
            <item enabled="false" id="mul26_5-1"/>
            <item enabled="false" id="mul27-1"/>
            <item enabled="false" id="mul27_5-1"/>
            <item enabled="false" id="mul28-1"/>
            <item enabled="false" id="mul28_5-1"/>
            <item enabled="false" id="mul29-1"/>
            <item enabled="false" id="mul29_5-1"/>
            <item enabled="false" id="mul30-1"/>
        </option>
        <option enabled="true" id="sckswitcher" selection="pll">
            <item enabled="true" id="pll" input="" value="2.4E8"/>
            <item enabled="true" id="main" input="" value="2.4E7"/>
            <item enabled="false" id="sub" input="" value="32768.0"/>
            <item enabled="false" id="hoco" input="" value="20000000"/>
            <item enabled="false" id="loco" input="" value="240000"/>
        </option>
        <option enabled="true" id="fclkdivider" selection="comboBox1-4">
            <item enabled="false" id="comboBox1-1"/>
            <item enabled="false" id="comboBox1-2"/>
            <item enabled="true" id="comboBox1-4"/>
            <item enabled="true" id="comboBox1-8"/>
            <item enabled="true" id="comboBox1-16"/>
            <item enabled="true" id="comboBox1-32"/>
            <item enabled="true" id="comboBox1-64"/>
        </option>
        <option enabled="true" id="iclkdivider" selection="comboBox1-2">
            <item enabled="false" id="comboBox1-1"/>
            <item enabled="true" id="comboBox1-2"/>
            <item enabled="true" id="comboBox1-4"/>
            <item enabled="true" id="comboBox1-8"/>
            <item enabled="true" id="comboBox1-16"/>
            <item enabled="true" id="comboBox1-32"/>
            <item enabled="true" id="comboBox1-64"/>
        </option>
        <option enabled="true" id="pclkadivider" selection="comboBox1-2">
            <item enabled="false" id="comboBox1-1"/>
            <item enabled="true" id="comboBox1-2"/>
            <item enabled="true" id="comboBox1-4"/>
            <item enabled="true" id="comboBox1-8"/>
            <item enabled="true" id="comboBox1-16"/>
            <item enabled="true" id="comboBox1-32"/>
            <item enabled="true" id="comboBox1-64"/>
        </option>
        <option enabled="true" id="pclkbdivider" selection="comboBox1-4">
            <item enabled="false" id="comboBox1-1"/>
            <item enabled="false" id="comboBox1-2"/>
            <item enabled="true" id="comboBox1-4"/>
            <item enabled="true" id="comboBox1-8"/>
            <item enabled="true" id="comboBox1-16"/>
            <item enabled="true" id="comboBox1-32"/>
            <item enabled="true" id="comboBox1-64"/>
        </option>
        <option enabled="true" id="pclkcdivider" selection="comboBox1-4">
            <item enabled="false" id="comboBox1-1"/>
            <item enabled="false" id="comboBox1-2"/>
            <item enabled="true" id="comboBox1-4"/>
            <item enabled="true" id="comboBox1-8"/>
            <item enabled="true" id="comboBox1-16"/>
            <item enabled="true" id="comboBox1-32"/>
            <item enabled="false" id="comboBox1-64"/>
        </option>
        <option enabled="true" id="pclkddivider" selection="comboBox1-4">
            <item enabled="false" id="comboBox1-1"/>
            <item enabled="false" id="comboBox1-2"/>
            <item enabled="true" id="comboBox1-4"/>
            <item enabled="true" id="comboBox1-8"/>
            <item enabled="true" id="comboBox1-16"/>
            <item enabled="true" id="comboBox1-32"/>
            <item enabled="false" id="comboBox1-64"/>
        </option>
        <option enabled="true" id="bckdivider" selection="comboBox1-2">
            <item enabled="false" id="comboBox1-1"/>
            <item enabled="true" id="comboBox1-2"/>
            <item enabled="true" id="comboBox1-4"/>
            <item enabled="true" id="comboBox1-8"/>
            <item enabled="true" id="comboBox1-16"/>
            <item enabled="true" id="comboBox1-32"/>
            <item enabled="true" id="comboBox1-64"/>
        </option>
        <option enabled="true" id="bckselectorenable" selection="uncheck">
            <item enabled="true" id="check"/>
            <item enabled="true" id="uncheck"/>
        </option>
        <option enabled="false" id="bckselector" selection="comboBox1-2">
            <item enabled="false" id="comboBox1-1"/>
            <item enabled="true" id="comboBox1-2"/>
        </option>
        <option enabled="true" id="uckenable" selection="uncheck">
            <item enabled="true" id="check"/>
            <item enabled="true" id="uncheck"/>
        </option>
        <option enabled="false" id="uckdivider" selection="comboBox1-5">
            <item enabled="false" id="comboBox1-2"/>
            <item enabled="false" id="comboBox1-3"/>
            <item enabled="false" id="comboBox1-4"/>
            <item enabled="true" id="comboBox1-5"/>
        </option>
        <option enabled="true" id="fclk" selection="textoutputitem">
            <item enabled="true" id="textoutputitem" input="" value="60.0"/>
        </option>
        <option enabled="true" id="iclk" selection="textoutputitem">
            <item enabled="true" id="textoutputitem" input="" value="120.0"/>
        </option>
        <option enabled="true" id="pclka" selection="textoutputitem">
            <item enabled="true" id="textoutputitem" input="" value="120.0"/>
        </option>
        <option enabled="true" id="pclkb" selection="textoutputitem">
            <item enabled="true" id="textoutputitem" input="" value="60.0"/>
        </option>
        <option enabled="true" id="pclkc" selection="textoutputitem">
            <item enabled="true" id="textoutputitem" input="" value="60.0"/>
        </option>
        <option enabled="true" id="pclkd" selection="textoutputitem">
            <item enabled="true" id="textoutputitem" input="" value="60.0"/>
        </option>
        <option enabled="true" id="bck" selection="textoutputitem">
            <item enabled="true" id="textoutputitem" input="" value="120.0"/>
        </option>
        <option enabled="false" id="bckpin" selection="textoutputitem">
            <item enabled="true" id="textoutputitem" input="" value="60.0"/>
        </option>
        <option enabled="false" id="sdclkenable" selection="uncheck">
            <item enabled="true" id="check"/>
            <item enabled="true" id="uncheck"/>
        </option>
        <option enabled="false" id="sdclk" selection="textoutputitem">
            <item enabled="true" id="textoutputitem" input="" value="120.0"/>
        </option>
        <option enabled="false" id="uclk" selection="textoutputitem">
            <item enabled="true" id="textoutputitem" input="" value="48.0"/>
        </option>
        <option enabled="false" id="caclclk" selection="textoutputitem">
            <item enabled="true" id="textoutputitem" input="" value="240"/>
        </option>
        <option enabled="false" id="cachclk" selection="textoutputitem">
            <item enabled="true" id="textoutputitem" input="" value="20"/>
        </option>
        <option enabled="false" id="cacsclk" selection="textoutputitem">
            <item enabled="true" id="textoutputitem" input="" value="32.768"/>
        </option>
        <option enabled="false" id="rtcsclkenable" selection="uncheck">
            <item enabled="true" id="check"/>
            <item enabled="true" id="uncheck"/>
        </option>
        <option enabled="false" id="rtcsclk" selection="textoutputitem">
            <item enabled="true" id="textoutputitem" input="" value="32.768"/>
        </option>
        <option enabled="false" id="cacilclk" selection="textoutputitem">
            <item enabled="true" id="textoutputitem" input="" value="120"/>
        </option>
        <option enabled="true" id="cacmclk" selection="textoutputitem">
            <item enabled="true" id="textoutputitem" input="" value="24.0"/>
        </option>
    </tool>
<tool id="Pins" version="1.0.1.0">
        <pinItem allocation="10" comments="" direction="None" id="EMLE" isUsedBySoftware="true" locked="false" status="0"/>
        <pinItem allocation="20" comments="" direction="None" id="XTAL" isUsedBySoftware="true" locked="false" status="0"/>
        <pinItem allocation="134" comments="" direction="None" id="IRQ14" isUsedBySoftware="true" locked="false" status="0"/>
        <pinItem allocation="135" comments="" direction="None" id="IRQ13" isUsedBySoftware="true" locked="false" status="0"/>
        <pinItem allocation="98" comments="" direction="None" id="IRQ15" isUsedBySoftware="true" locked="false" status="0"/>
        <pinItem allocation="124" comments="" direction="None" id="IRQ2" isUsedBySoftware="true" locked="false" status="0"/>
        <pinItem allocation="125" comments="" direction="None" id="IRQ1" isUsedBySoftware="true" locked="false" status="0"/>
        <pinItem allocation="101" comments="" direction="None" id="IRQ7" isUsedBySoftware="true" locked="false" status="0"/>
        <pinItem allocation="70" comments="" direction="None" id="RXD5" isUsedBySoftware="true" locked="false" status="0"/>
        <pinItem allocation="7" comments="" direction="None" id="RXD6" isUsedBySoftware="true" locked="false" status="65280"/>
        <pinItem allocation="8" comments="" direction="None" id="TXD6" isUsedBySoftware="true" locked="false" status="65280"/>
        <pinItem allocation="67" comments="" direction="None" id="TXD5" isUsedBySoftware="true" locked="false" status="0"/>
        <pinItem allocation="22" comments="" direction="None" id="EXTAL" isUsedBySoftware="true" locked="false" status="0"/>
        <pinItem allocation="16" comments="" direction="None" id="FINED" isUsedBySoftware="true" locked="false" status="0"/>
        <pinItem allocation="13" comments="" direction="None" id="CTS6#" isUsedBySoftware="true" locked="false" status="65280"/>
        <pinnumItem comment="LED2_B" id="88"/>
        <pinnumItem comment="SERIAL-CTS" id="89"/>
        <pinnumItem comment="OUTDOOR-AIR-QUALITY-RES_N" id="113"/>
        <pinnumItem comment="INDOOR-AIR-QUALITY-RES_N" id="114"/>
        <pinnumItem comment="LED2_G" id="90"/>
        <pinnumItem comment="LED4" id="94"/>
        <pinnumItem comment="PMOD2-GPIO1" id="96"/>
        <pinnumItem comment="BIOMETRIC-INT" id="98"/>
        <pinnumItem comment="PMOD1-CS" id="13"/>
        <pinnumItem comment="S1" id="19"/>
        <pinnumItem comment="ETHERNET-IRQ" id="124"/>
        <pinnumItem comment="S2" id="125"/>
        <pinnumItem comment="PMOD2-GPIO0" id="126"/>
        <pinnumItem comment="PMOD1-SCK" id="6"/>
        <pinnumItem comment="MICROPHONES2-OUT" id="127"/>
        <pinnumItem comment="PMOD1-MISO" id="7"/>
        <pinnumItem comment="PMOD1-MOSI" id="8"/>
        <pinnumItem comment="MICROPHONES1-OUT" id="129"/>
        <pinnumItem comment="PMOD2-SCK" id="25"/>
        <pinnumItem comment="PMOD2-MISO" id="26"/>
        <pinnumItem comment="PMOD2-MOSI" id="27"/>
        <pinnumItem comment="INDOOR-AIR-QUALITY-INT" id="134"/>
        <pinnumItem comment="OUTDOOR-AIR-QUALITY-INT" id="135"/>
        <pinnumItem comment="LED6" id="32"/>
        <pinnumItem comment="USB_VBUSEN" id="33"/>
        <pinnumItem comment="PMOD2-CS" id="34"/>
        <pinnumItem comment="LED3" id="35"/>
        <pinnumItem comment="LED2_R" id="38"/>
        <pinnumItem comment="USBFS_VBUS" id="40"/>
        <pinnumItem comment="PMOD1-GPIO0" id="42"/>
        <pinnumItem comment="USB_OVRCURA" id="43"/>
        <pinnumItem comment="SENSOR-SDA" id="44"/>
        <pinnumItem comment="SENSOR-SCL" id="45"/>
        <pinnumItem comment="USB_DM" id="47"/>
        <pinnumItem comment="USB_DP" id="48"/>
        <pinnumItem comment="PMOD1-GPIO1" id="51"/>
        <pinnumItem comment="ETHERNET-LINKSTA" id="52"/>
        <pinnumItem comment="PMOD2-GPIO3" id="54"/>
        <pinnumItem comment="PMOD2-GPIO2" id="56"/>
        <pinnumItem comment="ETHERNET-CRS_DV" id="58"/>
        <pinnumItem comment="ETHERNET-TXD1" id="63"/>
        <pinnumItem comment="ETHERNET-TXD0" id="64"/>
        <pinnumItem comment="ETHERNET-RST#" id="65"/>
        <pinnumItem comment="SERIAL-TXD" id="67"/>
        <pinnumItem comment="ETHERNET-RX_ER" id="68"/>
        <pinnumItem comment="ETHERNET-REF-50-CK" id="69"/>
        <pinnumItem comment="SERIAL-RXD" id="70"/>
        <pinnumItem comment="ETHERNET-RXD0" id="71"/>
        <pinnumItem comment="ETHERNET-RXD1" id="72"/>
        <pinnumItem comment="SERIAL-RTS" id="75"/>
        <pinnumItem comment="PMOD1-GPIO2" id="78"/>
        <pinnumItem comment="PMOD1-GPIO3" id="79"/>
        <pinnumItem comment="MOTION-TRACKING-INT1" id="101"/>
        <pinnumItem comment="ETHERNET-TXD_EN" id="81"/>
        <pinnumItem comment="ETHERNET-MDC" id="85"/>
        <pinnumItem comment="ETHERNET-MDIO" id="86"/>
    </tool>
<tool id="Summary" version="1.0.0.0">
<option id="com.renesas.smc.code.type" value="Normal Folder"/>
</tool>
<tool id="SWComponent" version="1.0.0.0">

<configuration inuse="true" name="FreeRTOS_Application">
<component display="FreeRTOS_Application" id="com.renesas.smc.tools.swcomponent.rtosconfigurator.freertos.amazon.application">
<gridItem id="CONNECTION" selectedIndex="2"/>
<gridItem id="OTA" selectedIndex="0"/>
</component>
<source id="com.renesas.smc.tools.swcomponent.rtosconfigurator.source"/>
</configuration>
<configuration inuse="true" name="FreeRTOS_Object">
<component display="FreeRTOS_Object" id="com.renesas.smc.tools.swcomponent.rtosconfigurator.freertos.object"/>
<source id="com.renesas.smc.tools.swcomponent.rtosconfigurator.source"/>
</configuration>
<configuration inuse="true" name="FreeRTOS_Kernel">
<component display="FreeRTOS_Kernel" id="com.renesas.smc.tools.swcomponent.rtosconfigurator.freertos.amazon.kernel">
<gridItem id="configTOTAL_HEAP_SIZE" selectedIndex="( size_t ) ( 256U * 1024U )"/>
</component>
<source id="com.renesas.smc.tools.swcomponent.rtosconfigurator.source"/>
</configuration>
<configuration inuse="true" name="AWS_device_shadow">
<component display="AWS_device_shadow" id="com.renesas.smc.tools.swcomponent.rtosconfigurator.freertos.amazon.device_shadow"/>
<source id="com.renesas.smc.tools.swcomponent.rtosconfigurator.source"/>
</configuration>
<configuration inuse="true" name="AWS_tcp_ip">
<component display="AWS_tcp_ip" id="com.renesas.smc.tools.swcomponent.rtosconfigurator.freertos.amazon.tcp_ip">
<gridItem id="ipconfigINCLUDE_FULL_INET_ADDR" selectedIndex="0"/>
<gridItem id="ipconfigNUM_NETWORK_BUFFER_DESCRIPTORS" selectedIndex="8"/>
<gridItem id="ipconfigUSE_TCP_WIN" selectedIndex="0"/>
</component>
<source id="com.renesas.smc.tools.swcomponent.rtosconfigurator.source"/>
</configuration>
<configuration inuse="true" name="AWS_mqtt">
<component display="AWS_mqtt" id="com.renesas.smc.tools.swcomponent.rtosconfigurator.freertos.amazon.mqtt">
<gridItem id="mqttconfigMQTT_TASK_STACK_DEPTH" selectedIndex="6114"/>
</component>
<source id="com.renesas.smc.tools.swcomponent.rtosconfigurator.source"/>
</configuration>
<configuration inuse="true" name="AWS_secure_socket">
<component display="AWS_secure_socket" id="com.renesas.smc.tools.swcomponent.rtosconfigurator.freertos.amazon.secure_socket"/>
<source id="com.renesas.smc.tools.swcomponent.rtosconfigurator.source"/>
</configuration>
<configuration inuse="true" name="AWS_ggd">
<component display="AWS_ggd" id="com.renesas.smc.tools.swcomponent.rtosconfigurator.freertos.amazon.ggd"/>
<source id="com.renesas.smc.tools.swcomponent.rtosconfigurator.source"/>
</configuration>
<configuration inuse="true" name="r_flash_rx">
<component display="r_flash_rx" id="r_flash_rx4.81" version="4.81">
<gridItem id="FLASH_CFG_PARAM_CHECKING_ENABLE" selectedIndex="1"/>
<gridItem id="FLASH_CFG_CODE_FLASH_ENABLE" selectedIndex="1"/>
<gridItem id="FLASH_CFG_DATA_FLASH_BGO" selectedIndex="1"/>
<gridItem id="FLASH_CFG_CODE_FLASH_BGO" selectedIndex="1"/>
<gridItem id="FLASH_CFG_CODE_FLASH_RUN_FROM_ROM" selectedIndex="1"/>
</component>
<source description="Components supporting Firmware Integration Technology" display="Firmware Integration Technology" id="com.renesas.smc.tools.swcomponent.fit.source"/>
</configuration>
<configuration inuse="true" name="r_byteq">
<component display="r_byteq" id="r_byteq2.00" version="2.00"/>
<source description="Components supporting Firmware Integration Technology" display="Firmware Integration Technology" id="com.renesas.smc.tools.swcomponent.fit.source"/>
<source description="Components supporting Firmware Integration Technology" display="Firmware Integration Technology" id="com.renesas.smc.tools.swcomponent.fit.source"/>
</configuration>
<configuration inuse="true" name="r_bsp">
<component display="r_bsp" id="r_bsp7.10" version="7.10">
<gridItem id="BSP_CFG_USER_STACK_ENABLE" selectedIndex="1"/>
<gridItem id="BSP_CFG_USTACK_BYTES" selectedIndex="0x1000"/>
<gridItem id="BSP_CFG_ISTACK_BYTES" selectedIndex="0x400"/>
<gridItem id="BSP_CFG_HEAP_BYTES" selectedIndex="0x400"/>
<gridItem id="BSP_CFG_IO_LIB_ENABLE" selectedIndex="1"/>
<gridItem id="BSP_CFG_USER_CHARGET_ENABLED" selectedIndex="0"/>
<gridItem id="BSP_CFG_USER_CHARGET_FUNCTION" selectedIndex="my_sw_charget_function"/>
<gridItem id="BSP_CFG_USER_CHARPUT_ENABLED" selectedIndex="0"/>
<gridItem id="BSP_CFG_USER_CHARPUT_FUNCTION" selectedIndex="my_sw_charput_function"/>
<gridItem id="BSP_CFG_RUN_IN_USER_MODE" selectedIndex="0"/>
<gridItem id="BSP_CFG_ID_CODE_LONG_1" selectedIndex="0xFFFFFFFF"/>
<gridItem id="BSP_CFG_ID_CODE_LONG_2" selectedIndex="0xFFFFFFFF"/>
<gridItem id="BSP_CFG_ID_CODE_LONG_3" selectedIndex="0xFFFFFFFF"/>
<gridItem id="BSP_CFG_ID_CODE_LONG_4" selectedIndex="0xFFFFFFFF"/>
<gridItem id="BSP_CFG_SERIAL_PROGRAMMER_CONECT_ENABLE" selectedIndex="1"/>
<gridItem id="BSP_CFG_ROM_CACHE_ENABLE" selectedIndex="0"/>
<gridItem id="BSP_CFG_TRUSTED_MODE_FUNCTION" selectedIndex="0xFFFFFFFF"/>
<gridItem id="BSP_CFG_FAW_REG_VALUE" selectedIndex="0xFFFFFFFF"/>
<gridItem id="BSP_CFG_ROMCODE_REG_VALUE" selectedIndex="0xFFFFFFFF"/>
<gridItem id="BSP_CFG_CODE_FLASH_BANK_MODE" selectedIndex="0"/>
<gridItem id="BSP_CFG_CODE_FLASH_START_BANK" selectedIndex="0"/>
<gridItem id="BSP_CFG_USER_LOCKING_ENABLED" selectedIndex="0"/>
<gridItem id="BSP_CFG_USER_LOCKING_TYPE" selectedIndex="bsp_lock_t"/>
<gridItem id="BSP_CFG_USER_LOCKING_HW_LOCK_FUNCTION" selectedIndex="my_hw_locking_function"/>
<gridItem id="BSP_CFG_USER_LOCKING_HW_UNLOCK_FUNCTION" selectedIndex="my_hw_unlocking_function"/>
<gridItem id="BSP_CFG_USER_LOCKING_SW_LOCK_FUNCTION" selectedIndex="my_sw_locking_function"/>
<gridItem id="BSP_CFG_USER_LOCKING_SW_UNLOCK_FUNCTION" selectedIndex="my_sw_unlocking_function"/>
<gridItem id="BSP_CFG_USER_WARM_START_CALLBACK_PRE_INITC_ENABLED" selectedIndex="0"/>
<gridItem id="BSP_CFG_USER_WARM_START_PRE_C_FUNCTION" selectedIndex="my_sw_warmstart_prec_function"/>
<gridItem id="BSP_CFG_USER_WARM_START_CALLBACK_POST_INITC_ENABLED" selectedIndex="0"/>
<gridItem id="BSP_CFG_USER_WARM_START_POST_C_FUNCTION" selectedIndex="my_sw_warmstart_postc_function"/>
<gridItem id="BSP_CFG_PARAM_CHECKING_ENABLE" selectedIndex="1"/>
<gridItem id="BSP_CFG_EBMAPCR_1ST_PRIORITY" selectedIndex="0"/>
<gridItem id="BSP_CFG_EBMAPCR_2ND_PRIORITY" selectedIndex="3"/>
<gridItem id="BSP_CFG_EBMAPCR_3RD_PRIORITY" selectedIndex="1"/>
<gridItem id="BSP_CFG_EBMAPCR_4TH_PRIORITY" selectedIndex="2"/>
<gridItem id="BSP_CFG_EBMAPCR_5TH_PRIORITY" selectedIndex="4"/>
<gridItem id="BSP_CFG_FIT_IPL_MAX" selectedIndex="15"/>
<gridItem id="BSP_CFG_SWINT_UNIT1_ENABLE" selectedIndex="0"/>
<gridItem id="BSP_CFG_SWINT_UNIT2_ENABLE" selectedIndex="0"/>
<gridItem id="BSP_CFG_SWINT_TASK_BUFFER_NUMBER" selectedIndex="8"/>
<gridItem id="BSP_CFG_SWINT_IPR_INITIAL_VALUE" selectedIndex="1"/>
<gridItem id="BSP_CFG_SCI_UART_TERMINAL_ENABLE" selectedIndex="1"/>
<gridItem id="BSP_CFG_SCI_UART_TERMINAL_CHANNEL" selectedIndex="5"/>
<gridItem id="BSP_CFG_SCI_UART_TERMINAL_BITRATE" selectedIndex="115200"/>
<gridItem id="BSP_CFG_SCI_UART_TERMINAL_INTERRUPT_PRIORITY" selectedIndex="15"/>
</component>
<source id="com.renesas.smc.tools.swcomponent.fit.source"/>
<source id="com.renesas.smc.tools.swcomponent.fit.source"/>
</configuration>
<configuration inuse="true" name="r_s12ad_rx">
<component display="r_s12ad_rx" id="r_s12ad_rx4.93" version="4.93">
<gridItem id="S12AD0" selectedIndex="1"/>
<gridItem id="S12AD0" selectedIndex="0"/>
</component>
<source id="com.renesas.smc.tools.swcomponent.fit.source"/>
<source id="com.renesas.smc.tools.swcomponent.fit.source"/>
</configuration>
<configuration inuse="true" name="r_sci_rx">
<component display="r_sci_rx" id="r_sci_rx4.30" version="4.30">
<gridItem id="SCK0" selectedIndex="0"/>
<gridItem id="RXD0/SMISO0/SSCL0" selectedIndex="0"/>
<gridItem id="TXD0/SMOSI0/SSDA0" selectedIndex="0"/>
<gridItem id="CTS0#/RTS0#/SS0#" selectedIndex="0"/>
<gridItem id="SCI0" selectedIndex="0"/>
<gridItem id="SCK1" selectedIndex="0"/>
<gridItem id="RXD1/SMISO1/SSCL1" selectedIndex="0"/>
<gridItem id="TXD1/SMOSI1/SSDA1" selectedIndex="0"/>
<gridItem id="CTS1#/RTS1#/SS1#" selectedIndex="0"/>
<gridItem id="SCI1" selectedIndex="0"/>
<gridItem id="SCK2" selectedIndex="0"/>
<gridItem id="RXD2/SMISO2/SSCL2" selectedIndex="0"/>
<gridItem id="TXD2/SMOSI2/SSDA2" selectedIndex="0"/>
<gridItem id="CTS2#/RTS2#/SS2#" selectedIndex="0"/>
<gridItem id="SCI2" selectedIndex="0"/>
<gridItem id="SCK3" selectedIndex="0"/>
<gridItem id="RXD3/SMISO3/SSCL3" selectedIndex="0"/>
<gridItem id="TXD3/SMOSI3/SSDA3" selectedIndex="0"/>
<gridItem id="CTS3#/RTS3#/SS3#" selectedIndex="0"/>
<gridItem id="SCI3" selectedIndex="0"/>
<gridItem id="SCK4" selectedIndex="0"/>
<gridItem id="RXD4/SMISO4/SSCL4" selectedIndex="0"/>
<gridItem id="TXD4/SMOSI4/SSDA4" selectedIndex="0"/>
<gridItem id="CTS4#/RTS4#/SS4#" selectedIndex="0"/>
<gridItem id="SCI4" selectedIndex="0"/>
<gridItem id="SCK5" selectedIndex="0"/>
<gridItem id="RXD5/SMISO5/SSCL5" selectedIndex="1"/>
<gridItem id="TXD5/SMOSI5/SSDA5" selectedIndex="1"/>
<gridItem id="CTS5#/RTS5#/SS5#" selectedIndex="0"/>
<gridItem id="SCI5" selectedIndex="1"/>
<gridItem id="SCK6" selectedIndex="0"/>
<gridItem id="RXD6/SMISO6/SSCL6" selectedIndex="1"/>
<gridItem id="TXD6/SMOSI6/SSDA6" selectedIndex="1"/>
<gridItem id="CTS6#/RTS6#/SS6#" selectedIndex="1"/>
<gridItem id="SCI6" selectedIndex="1"/>
<gridItem id="SCK7" selectedIndex="0"/>
<gridItem id="RXD7/SMISO7/SSCL7" selectedIndex="0"/>
<gridItem id="TXD7/SMOSI7/SSDA7" selectedIndex="0"/>
<gridItem id="CTS7#/RTS7#/SS7#" selectedIndex="0"/>
<gridItem id="SCI7" selectedIndex="0"/>
<gridItem id="SCK8" selectedIndex="0"/>
<gridItem id="RXD8/SMISO8/SSCL8" selectedIndex="1"/>
<gridItem id="TXD8/SMOSI8/SSDA8" selectedIndex="1"/>
<gridItem id="CTS8#/RTS8#/SS8#" selectedIndex="0"/>
<gridItem id="SCI8" selectedIndex="0"/>
<gridItem id="SCK9" selectedIndex="0"/>
<gridItem id="RXD9/SMISO9/SSCL9" selectedIndex="0"/>
<gridItem id="TXD9/SMOSI9/SSDA9" selectedIndex="0"/>
<gridItem id="CTS9#/RTS9#/SS9#" selectedIndex="0"/>
<gridItem id="SCI9" selectedIndex="0"/>
<gridItem id="SCK10" selectedIndex="0"/>
<gridItem id="RXD10/SMISO10/SSCL10" selectedIndex="0"/>
<gridItem id="TXD10/SMOSI10/SSDA10" selectedIndex="0"/>
<gridItem id="SS10#" selectedIndex="0"/>
<gridItem id="CTS10#" selectedIndex="0"/>
<gridItem id="RTS10#" selectedIndex="0"/>
<gridItem id="SCI10" selectedIndex="0"/>
<gridItem id="SCK11" selectedIndex="0"/>
<gridItem id="RXD11/SMISO11/SSCL11" selectedIndex="0"/>
<gridItem id="TXD11/SMOSI11/SSDA11" selectedIndex="0"/>
<gridItem id="SS11#" selectedIndex="0"/>
<gridItem id="CTS11#" selectedIndex="0"/>
<gridItem id="RTS11#" selectedIndex="0"/>
<gridItem id="SCI11" selectedIndex="0"/>
<gridItem id="SCK12" selectedIndex="0"/>
<gridItem id="RXD12/SMISO12/SSCL12" selectedIndex="0"/>
<gridItem id="TXD12/SMOSI12/SSDA12" selectedIndex="0"/>
<gridItem id="CTS12#/RTS12#/SS12#" selectedIndex="0"/>
<gridItem id="SCI12" selectedIndex="0"/>
<gridItem id="SCI_CFG_PARAM_CHECKING_ENABLE" selectedIndex="0"/>
<gridItem id="SCI_CFG_ASYNC_INCLUDED" selectedIndex="1"/>
<gridItem id="SCI_CFG_SYNC_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_SSPI_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_IRDA_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_USE_CIRCULAR_BUFFER" selectedIndex="0"/>
<gridItem id="SCI_CFG_DUMMY_TX_BYTE" selectedIndex="0xFF"/>
<gridItem id="SCI_CFG_CH0_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH1_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH2_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH3_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH4_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH5_INCLUDED" selectedIndex="1"/>
<gridItem id="SCI_CFG_CH6_INCLUDED" selectedIndex="1"/>
<gridItem id="SCI_CFG_CH7_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH8_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH9_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH10_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH11_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH12_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH0_TX_BUFSIZ" selectedIndex="80"/>
<gridItem id="SCI_CFG_CH1_TX_BUFSIZ" selectedIndex="80"/>
<gridItem id="SCI_CFG_CH2_TX_BUFSIZ" selectedIndex="80"/>
<gridItem id="SCI_CFG_CH3_TX_BUFSIZ" selectedIndex="80"/>
<gridItem id="SCI_CFG_CH4_TX_BUFSIZ" selectedIndex="80"/>
<gridItem id="SCI_CFG_CH5_TX_BUFSIZ" selectedIndex="80"/>
<gridItem id="SCI_CFG_CH6_TX_BUFSIZ" selectedIndex="2180"/>
<gridItem id="SCI_CFG_CH7_TX_BUFSIZ" selectedIndex="80"/>
<gridItem id="SCI_CFG_CH8_TX_BUFSIZ" selectedIndex="80"/>
<gridItem id="SCI_CFG_CH9_TX_BUFSIZ" selectedIndex="80"/>
<gridItem id="SCI_CFG_CH10_TX_BUFSIZ" selectedIndex="80"/>
<gridItem id="SCI_CFG_CH11_TX_BUFSIZ" selectedIndex="80"/>
<gridItem id="SCI_CFG_CH12_TX_BUFSIZ" selectedIndex="80"/>
<gridItem id="SCI_CFG_CH0_RX_BUFSIZ" selectedIndex="80"/>
<gridItem id="SCI_CFG_CH1_RX_BUFSIZ" selectedIndex="80"/>
<gridItem id="SCI_CFG_CH2_RX_BUFSIZ" selectedIndex="80"/>
<gridItem id="SCI_CFG_CH3_RX_BUFSIZ" selectedIndex="80"/>
<gridItem id="SCI_CFG_CH4_RX_BUFSIZ" selectedIndex="80"/>
<gridItem id="SCI_CFG_CH5_RX_BUFSIZ" selectedIndex="80"/>
<gridItem id="SCI_CFG_CH6_RX_BUFSIZ" selectedIndex="8192"/>
<gridItem id="SCI_CFG_CH7_RX_BUFSIZ" selectedIndex="80"/>
<gridItem id="SCI_CFG_CH8_RX_BUFSIZ" selectedIndex="80"/>
<gridItem id="SCI_CFG_CH9_RX_BUFSIZ" selectedIndex="80"/>
<gridItem id="SCI_CFG_CH10_RX_BUFSIZ" selectedIndex="80"/>
<gridItem id="SCI_CFG_CH11_RX_BUFSIZ" selectedIndex="80"/>
<gridItem id="SCI_CFG_CH12_RX_BUFSIZ" selectedIndex="80"/>
<gridItem id="SCI_CFG_TEI_INCLUDED" selectedIndex="1"/>
<gridItem id="SCI_CFG_ERI_TEI_PRIORITY" selectedIndex="3"/>
<gridItem id="SCI_CFG_CH7_FIFO_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH8_FIFO_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH9_FIFO_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH10_FIFO_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH11_FIFO_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH7_TX_FIFO_THRESH" selectedIndex="8"/>
<gridItem id="SCI_CFG_CH8_TX_FIFO_THRESH" selectedIndex="8"/>
<gridItem id="SCI_CFG_CH9_TX_FIFO_THRESH" selectedIndex="8"/>
<gridItem id="SCI_CFG_CH10_TX_FIFO_THRESH" selectedIndex="8"/>
<gridItem id="SCI_CFG_CH11_TX_FIFO_THRESH" selectedIndex="8"/>
<gridItem id="SCI_CFG_CH7_RX_FIFO_THRESH" selectedIndex="8"/>
<gridItem id="SCI_CFG_CH8_RX_FIFO_THRESH" selectedIndex="8"/>
<gridItem id="SCI_CFG_CH9_RX_FIFO_THRESH" selectedIndex="8"/>
<gridItem id="SCI_CFG_CH10_RX_FIFO_THRESH" selectedIndex="8"/>
<gridItem id="SCI_CFG_CH11_RX_FIFO_THRESH" selectedIndex="8"/>
<gridItem id="SCI_CFG_CH0_DATA_MATCH_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH1_DATA_MATCH_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH2_DATA_MATCH_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH3_DATA_MATCH_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH4_DATA_MATCH_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH5_DATA_MATCH_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH6_DATA_MATCH_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH7_DATA_MATCH_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH8_DATA_MATCH_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH9_DATA_MATCH_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH10_DATA_MATCH_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH11_DATA_MATCH_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH0_TX_DTC_DMACA_ENABLE" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH1_TX_DTC_DMACA_ENABLE" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH2_TX_DTC_DMACA_ENABLE" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH3_TX_DTC_DMACA_ENABLE" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH4_TX_DTC_DMACA_ENABLE" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH5_TX_DTC_DMACA_ENABLE" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH6_TX_DTC_DMACA_ENABLE" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH7_TX_DTC_DMACA_ENABLE" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH8_TX_DTC_DMACA_ENABLE" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH9_TX_DTC_DMACA_ENABLE" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH10_TX_DTC_DMACA_ENABLE" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH11_TX_DTC_DMACA_ENABLE" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH12_TX_DTC_DMACA_ENABLE" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH0_RX_DTC_DMACA_ENABLE" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH1_RX_DTC_DMACA_ENABLE" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH2_RX_DTC_DMACA_ENABLE" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH3_RX_DTC_DMACA_ENABLE" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH4_RX_DTC_DMACA_ENABLE" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH5_RX_DTC_DMACA_ENABLE" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH6_RX_DTC_DMACA_ENABLE" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH7_RX_DTC_DMACA_ENABLE" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH8_RX_DTC_DMACA_ENABLE" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH9_RX_DTC_DMACA_ENABLE" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH10_RX_DTC_DMACA_ENABLE" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH11_RX_DTC_DMACA_ENABLE" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH12_RX_DTC_DMACA_ENABLE" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH0_TX_DMACA_CH_NUM" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH1_TX_DMACA_CH_NUM" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH2_TX_DMACA_CH_NUM" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH3_TX_DMACA_CH_NUM" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH4_TX_DMACA_CH_NUM" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH5_TX_DMACA_CH_NUM" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH6_TX_DMACA_CH_NUM" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH7_TX_DMACA_CH_NUM" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH8_TX_DMACA_CH_NUM" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH9_TX_DMACA_CH_NUM" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH10_TX_DMACA_CH_NUM" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH11_TX_DMACA_CH_NUM" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH12_TX_DMACA_CH_NUM" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH0_RX_DMACA_CH_NUM" selectedIndex="1"/>
<gridItem id="SCI_CFG_CH1_RX_DMACA_CH_NUM" selectedIndex="1"/>
<gridItem id="SCI_CFG_CH2_RX_DMACA_CH_NUM" selectedIndex="1"/>
<gridItem id="SCI_CFG_CH3_RX_DMACA_CH_NUM" selectedIndex="1"/>
<gridItem id="SCI_CFG_CH4_RX_DMACA_CH_NUM" selectedIndex="1"/>
<gridItem id="SCI_CFG_CH5_RX_DMACA_CH_NUM" selectedIndex="1"/>
<gridItem id="SCI_CFG_CH6_RX_DMACA_CH_NUM" selectedIndex="1"/>
<gridItem id="SCI_CFG_CH7_RX_DMACA_CH_NUM" selectedIndex="1"/>
<gridItem id="SCI_CFG_CH8_RX_DMACA_CH_NUM" selectedIndex="1"/>
<gridItem id="SCI_CFG_CH9_RX_DMACA_CH_NUM" selectedIndex="1"/>
<gridItem id="SCI_CFG_CH10_RX_DMACA_CH_NUM" selectedIndex="1"/>
<gridItem id="SCI_CFG_CH11_RX_DMACA_CH_NUM" selectedIndex="1"/>
<gridItem id="SCI_CFG_CH12_RX_DMACA_CH_NUM" selectedIndex="1"/>
<gridItem id="SCI_CFG_CH5_IRDA_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH5_IRDA_IRTXD_INACTIVE_LEVEL" selectedIndex="1"/>
<gridItem id="SCI_CFG_CH5_IRDA_IRRXD_INACTIVE_LEVEL" selectedIndex="1"/>
<gridItem id="SCI_CFG_CH0_RX_DATA_SAMPLING_TIMING_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH1_RX_DATA_SAMPLING_TIMING_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH2_RX_DATA_SAMPLING_TIMING_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH3_RX_DATA_SAMPLING_TIMING_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH4_RX_DATA_SAMPLING_TIMING_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH5_RX_DATA_SAMPLING_TIMING_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH6_RX_DATA_SAMPLING_TIMING_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH7_RX_DATA_SAMPLING_TIMING_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH8_RX_DATA_SAMPLING_TIMING_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH9_RX_DATA_SAMPLING_TIMING_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH10_RX_DATA_SAMPLING_TIMING_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH11_RX_DATA_SAMPLING_TIMING_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH0_TX_SIGNAL_TRANSITION_TIMING_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH1_TX_SIGNAL_TRANSITION_TIMING_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH2_TX_SIGNAL_TRANSITION_TIMING_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH3_TX_SIGNAL_TRANSITION_TIMING_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH4_TX_SIGNAL_TRANSITION_TIMING_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH5_TX_SIGNAL_TRANSITION_TIMING_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH6_TX_SIGNAL_TRANSITION_TIMING_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH7_TX_SIGNAL_TRANSITION_TIMING_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH8_TX_SIGNAL_TRANSITION_TIMING_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH9_TX_SIGNAL_TRANSITION_TIMING_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH10_TX_SIGNAL_TRANSITION_TIMING_INCLUDED" selectedIndex="0"/>
<gridItem id="SCI_CFG_CH11_TX_SIGNAL_TRANSITION_TIMING_INCLUDED" selectedIndex="0"/>
</component>
<source description="Components supporting Firmware Integration Technology" display="Firmware Integration Technology" id="com.renesas.smc.tools.swcomponent.fit.source"/>
<source description="Components supporting Firmware Integration Technology" display="Firmware Integration Technology" id="com.renesas.smc.tools.swcomponent.fit.source"/>
</configuration>
<configuration inuse="true" name="r_cellular">
<component description="Dependency : r_bsp version(s) 6.20&#10;Dependency : r_sci_rx version(s) 3.20&#10;Dependency : r_irq_rx version(s) 3.50&#10;Use UART to control RYZ014A and connect to the Internet." detailDescription="Cellular Module control functions for Renesas MCUs." display="r_cellular" id="r_cellular1.04" version="1.04">
<gridItem id="CELLULAR_CFG_AP_NAME" selectedIndex="ibasis.iot"/>
<gridItem id="CELLULAR_CFG_AP_USERID" selectedIndex=""/>
<gridItem id="CELLULAR_CFG_AP_PASSWORD" selectedIndex=""/>
<gridItem id="CELLULAR_CFG_PIN_CODE" selectedIndex=""/>
<gridItem id="CELLULAR_CFG_ATC_RETRY_GATT" selectedIndex="100"/>
<gridItem id="CELLULAR_CFG_EX_TIMEOUT" selectedIndex="80"/>
<gridItem id="CELLULAR_CFG_INT_PRIORITY" selectedIndex="4"/>
<gridItem id="CELLULAR_CFG_SEMAPHORE_BLOCK_TIME" selectedIndex="15000"/>
<gridItem id="CELLULAR_CFG_DEBUGLOG" selectedIndex="4"/>
<gridItem id="CELLULAR_CFG_RESET_SIGNAL_LOGIC" selectedIndex="1"/>
<gridItem id="CELLULAR_CFG_UART_SCI_CH" selectedIndex="6"/>
<gridItem id="CELLULAR_CFG_RTS_PORT" selectedIndex="0"/>
<gridItem id="CELLULAR_CFG_RTS_PIN" selectedIndex="2"/>
<gridItem id="CELLULAR_CFG_RESET_PORT" selectedIndex="5"/>
<gridItem id="CELLULAR_CFG_RESET_PIN" selectedIndex="5"/>
</component>
<source description="Components supporting Firmware Integration Technology" display="Firmware Integration Technology" id="com.renesas.smc.tools.swcomponent.fit.source"/>
<source description="Components supporting Firmware Integration Technology" display="Firmware Integration Technology" id="com.renesas.smc.tools.swcomponent.fit.source"/>
</configuration>
<configuration inuse="true" name="r_irq_rx">
<component description="Dependency : r_bsp version(s) 7.10&#10;This software provides a unified, abstracted interface for low-level handling of interrupt events from external pin interrupts. These events are mapped to the IRQ vectors." detailDescription="IRQ Driver" display="r_irq_rx" id="r_irq_rx4.00" version="4.00">
<gridItem id="IRQ0" selectedIndex="0"/>
<gridItem id="IRQ1" selectedIndex="1"/>
<gridItem id="IRQ2" selectedIndex="1"/>
<gridItem id="IRQ3" selectedIndex="0"/>
<gridItem id="IRQ4" selectedIndex="0"/>
<gridItem id="IRQ5" selectedIndex="0"/>
<gridItem id="IRQ6" selectedIndex="0"/>
<gridItem id="IRQ7" selectedIndex="1"/>
<gridItem id="IRQ8" selectedIndex="0"/>
<gridItem id="IRQ9" selectedIndex="0"/>
<gridItem id="IRQ10" selectedIndex="0"/>
<gridItem id="IRQ11" selectedIndex="0"/>
<gridItem id="IRQ12" selectedIndex="0"/>
<gridItem id="IRQ13" selectedIndex="1"/>
<gridItem id="IRQ14" selectedIndex="1"/>
<gridItem id="IRQ15" selectedIndex="1"/>
<gridItem id="IRQ_CFG_REQUIRE_LOCK" selectedIndex="0"/>
<gridItem id="IRQ_CFG_PARAM_CHECKING" selectedIndex="0"/>
<gridItem id="IRQ_CFG_FILT_EN_IRQ0" selectedIndex="1"/>
<gridItem id="IRQ_CFG_FILT_PLCK_IRQ0" selectedIndex="3"/>
<gridItem id="IRQ_CFG_FILT_EN_IRQ1" selectedIndex="1"/>
<gridItem id="IRQ_CFG_FILT_PLCK_IRQ1" selectedIndex="3"/>
<gridItem id="IRQ_CFG_FILT_EN_IRQ2" selectedIndex="1"/>
<gridItem id="IRQ_CFG_FILT_PLCK_IRQ2" selectedIndex="3"/>
<gridItem id="IRQ_CFG_FILT_EN_IRQ3" selectedIndex="1"/>
<gridItem id="IRQ_CFG_FILT_PLCK_IRQ3" selectedIndex="0"/>
<gridItem id="IRQ_CFG_FILT_EN_IRQ4" selectedIndex="1"/>
<gridItem id="IRQ_CFG_FILT_PLCK_IRQ4" selectedIndex="0"/>
<gridItem id="IRQ_CFG_FILT_EN_IRQ5" selectedIndex="1"/>
<gridItem id="IRQ_CFG_FILT_PLCK_IRQ5" selectedIndex="0"/>
<gridItem id="IRQ_CFG_FILT_EN_IRQ6" selectedIndex="1"/>
<gridItem id="IRQ_CFG_FILT_PLCK_IRQ6" selectedIndex="0"/>
<gridItem id="IRQ_CFG_FILT_EN_IRQ7" selectedIndex="1"/>
<gridItem id="IRQ_CFG_FILT_PLCK_IRQ7" selectedIndex="0"/>
<gridItem id="IRQ_CFG_FILT_EN_IRQ8" selectedIndex="1"/>
<gridItem id="IRQ_CFG_FILT_PLCK_IRQ8" selectedIndex="0"/>
<gridItem id="IRQ_CFG_FILT_EN_IRQ9" selectedIndex="1"/>
<gridItem id="IRQ_CFG_FILT_PLCK_IRQ9" selectedIndex="0"/>
<gridItem id="IRQ_CFG_FILT_EN_IRQ10" selectedIndex="1"/>
<gridItem id="IRQ_CFG_FILT_PLCK_IRQ10" selectedIndex="3"/>
<gridItem id="IRQ_CFG_FILT_EN_IRQ11" selectedIndex="1"/>
<gridItem id="IRQ_CFG_FILT_PLCK_IRQ11" selectedIndex="0"/>
<gridItem id="IRQ_CFG_FILT_EN_IRQ12" selectedIndex="1"/>
<gridItem id="IRQ_CFG_FILT_PLCK_IRQ12" selectedIndex="0"/>
<gridItem id="IRQ_CFG_FILT_EN_IRQ13" selectedIndex="1"/>
<gridItem id="IRQ_CFG_FILT_PLCK_IRQ13" selectedIndex="0"/>
<gridItem id="IRQ_CFG_FILT_EN_IRQ14" selectedIndex="1"/>
<gridItem id="IRQ_CFG_FILT_PLCK_IRQ14" selectedIndex="0"/>
<gridItem id="IRQ_CFG_FILT_EN_IRQ15" selectedIndex="1"/>
<gridItem id="IRQ_CFG_FILT_PLCK_IRQ15" selectedIndex="0"/>
</component>
<source description="Components supporting Firmware Integration Technology" display="Firmware Integration Technology" id="com.renesas.smc.tools.swcomponent.fit.source"/>
<source description="Components supporting Firmware Integration Technology" display="Firmware Integration Technology" id="com.renesas.smc.tools.swcomponent.fit.source"/>
</configuration>
</tool>
</smc>
