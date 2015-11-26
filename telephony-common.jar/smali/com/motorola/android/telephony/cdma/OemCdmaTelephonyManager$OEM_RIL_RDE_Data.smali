.class public Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
.super Ljava/lang/Object;
.source "OemCdmaTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OEM_RIL_RDE_Data"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_imsi_addr_num_type;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_mob_term_type;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_accolc_type;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_imsi_mcc_type;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_imsi_11_12_type;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_min2_type;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_min1_type;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_mdn_type;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_roaming_list_type;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_pref_voice_so_type;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_bc_config_type;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$EmergencyAddress;
    }
.end annotation


# static fields
.field public static final RDE_BAND_PRIORITY_LIST:I = 0x272a

.field public static final RDE_DS_MIP_AAA_KEY_I:I = 0x2719

.field public static final RDE_DS_MIP_HA_KEY_I:I = 0x2718

.field public static final RDE_DS_MIP_SIP_CHAP_KEY_I:I = 0x271a

.field public static final RDE_EFS_1XADVANCED_CAPABILITY_STATUS_I:I = 0x271f

.field public static final RDE_EFS_SO73_COP0_SUPPORTED_I:I = 0x2720

.field public static final RDE_LTE_AVAILABLE_FILE_I:I = 0x2727

.field public static final RDE_LTE_LONG_SCAN_I:I = 0x2724

.field public static final RDE_LTE_MAXBSR_TIMER_STAGES_I:I = 0x2726

.field public static final RDE_LTE_TELESCOPE_MAXBSR_TIME_I:I = 0x2725

.field public static final RDE_MIP_ERROR_CODE_I:I = 0x2723

.field public static final RDE_MOT_NV_CARRIER_SIM_LOCK_I:I = 0x1f5b

.field public static final RDE_MOT_NV_PUBLIC_USER_IDENTITY_DOMAIN_NAME_I:I = 0x1f4c

.field public static final RDE_MOT_NV_SMS_EVDO_I:I = 0x1f47

.field public static final RDE_MOT_NV_SMS_EVDO_P_CSCF_DOMAIN_NAME_I:I = 0x1f4a

.field public static final RDE_MOT_NV_SMS_EVDO_P_CSCF_PORT_NUMBER_I:I = 0x1f4b

.field public static final RDE_MOT_NV_SMS_EVDO_RELEASE_TIMER_I:I = 0x1f49

.field public static final RDE_MOT_NV_SMS_EVDO_T1_TIMER_I:I = 0x1f48

.field public static final RDE_MOT_NV_SPRINT_LTE_FORCE_ENABLE_I:I = 0x1f58

.field public static final RDE_NV_ACCOLC_I:I = 0x2

.field public static final RDE_NV_CDMA_DDTM_PREFERENCE_SETTINGS:I = 0xe32

.field public static final RDE_NV_CDMA_RX_DIVERSITY_CTRL_I:I = 0x26

.field public static final RDE_NV_CDMA_SO68_ENABLED_I:I = 0x30

.field public static final RDE_NV_CDMA_SO73_ENABLED_I:I = 0x2d

.field public static final RDE_NV_CDMA_VZW_SS_I:I = 0x271e

.field public static final RDE_NV_DDTM_SETTINGS_I:I = 0x2722

.field public static final RDE_NV_DIAL_I:I = 0x6

.field public static final RDE_NV_DIR_NUMBER_I:I = 0x7

.field public static final RDE_NV_DS_MIP_GEN_USER_PROF_I:I = 0x9

.field public static final RDE_NV_DS_MIP_SS_USER_PROF_I:I = 0x2e

.field public static final RDE_NV_D_KEY_I:I = 0x4

.field public static final RDE_NV_EHRPD_ENABLED_I:I = 0x2b

.field public static final RDE_NV_ESN_I:I = 0xa

.field public static final RDE_NV_HDR_RX_DIVERSITY_CTRL_I:I = 0x27

.field public static final RDE_NV_IMSI_11_12_I:I = 0x10

.field public static final RDE_NV_IMSI_ADDR_NUM_I:I = 0x31

.field public static final RDE_NV_IMSI_MCC_I:I = 0x11

.field public static final RDE_NV_LOCK_CODE_I:I = 0x17

.field public static final RDE_NV_LTE_BC_CONFIG_I:I = 0x35

.field public static final RDE_NV_LTE_CAPABILITY_I:I = 0x2721

.field public static final RDE_NV_MIN1_I:I = 0x19

.field public static final RDE_NV_MIN2_I:I = 0x1a

.field public static final RDE_NV_MOB_TERM_FOR_NID_I:I = 0x34

.field public static final RDE_NV_MOB_TERM_FOR_SID_I:I = 0x33

.field public static final RDE_NV_MOB_TERM_HOME_I:I = 0x32

.field public static final RDE_NV_OTKSL_I:I = 0x1b

.field public static final RDE_NV_PREF_ONLY_FLAG:I = 0x271d

.field public static final RDE_NV_PREF_VOICE_SO_I:I = 0x1e

.field public static final RDE_NV_ROAMING_LIST_683_I:I = 0x6c

.field public static final RDE_NV_SCM_I:I = 0x24

.field public static final RDE_NV_SLOT_CYCLE_INDEX_I:I = 0x2f


# instance fields
.field public dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

.field public elementID:I

.field public length:I

.field public offset:I

.field public recordNum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1068
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1157
    iput v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 1158
    iput v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->recordNum:I

    .line 1159
    iput v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->offset:I

    .line 1160
    iput v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->length:I

    .line 1161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 2053
    return-void
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    .locals 6
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 2087
    new-instance v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 2088
    .local v1, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 2089
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->recordNum:I

    .line 2090
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->offset:I

    .line 2091
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->length:I

    .line 2092
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;-><init>()V

    .line 2093
    .local v2, "rde_obj":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    iget v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->length:I

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;->data:[B

    .line 2095
    iget v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    sparse-switch v3, :sswitch_data_0

    .line 2210
    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deserialize elementID ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    :goto_0
    return-object v1

    .line 2097
    :sswitch_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;

    move-result-object v3

    iput-object v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    goto :goto_0

    .line 2103
    :sswitch_1
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deserialize length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->length:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->length:I

    if-ge v0, v3, :cond_1

    .line 2105
    iget-object v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;->data:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    aput-byte v4, v3, v0

    .line 2104
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2107
    :cond_1
    iput-object v2, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    goto :goto_0

    .line 2112
    .end local v0    # "i":I
    :sswitch_2
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "Deserialize roaming list"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_roaming_list_type;->deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_roaming_list_type;

    move-result-object v3

    iput-object v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    goto :goto_0

    .line 2122
    :sswitch_3
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deserialize String Length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->length:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->length:I

    if-ge v0, v3, :cond_3

    .line 2124
    iget-object v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;->data:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    aput-byte v4, v3, v0

    .line 2123
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2126
    :cond_3
    iput-object v2, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    goto :goto_0

    .line 2160
    .end local v0    # "i":I
    :sswitch_4
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deserialize int length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->length:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->length:I

    if-ge v0, v3, :cond_5

    .line 2162
    iget-object v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;->data:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    aput-byte v4, v3, v0

    .line 2161
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2164
    :cond_5
    iput-object v2, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    goto/16 :goto_0

    .line 2168
    .end local v0    # "i":I
    :sswitch_5
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_pref_voice_so_type;->deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_pref_voice_so_type;

    move-result-object v3

    iput-object v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    goto/16 :goto_0

    .line 2173
    :sswitch_6
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;

    move-result-object v3

    iput-object v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    goto/16 :goto_0

    .line 2177
    :sswitch_7
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;->deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;

    move-result-object v3

    iput-object v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    goto/16 :goto_0

    .line 2183
    :sswitch_8
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_mdn_type;->deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_mdn_type;

    move-result-object v3

    iput-object v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    goto/16 :goto_0

    .line 2186
    :sswitch_9
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_min1_type;->deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_min1_type;

    move-result-object v3

    iput-object v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    goto/16 :goto_0

    .line 2189
    :sswitch_a
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_min2_type;->deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_min2_type;

    move-result-object v3

    iput-object v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    goto/16 :goto_0

    .line 2192
    :sswitch_b
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_imsi_11_12_type;->deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_imsi_11_12_type;

    move-result-object v3

    iput-object v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    goto/16 :goto_0

    .line 2195
    :sswitch_c
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_imsi_mcc_type;->deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_imsi_mcc_type;

    move-result-object v3

    iput-object v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    goto/16 :goto_0

    .line 2198
    :sswitch_d
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_accolc_type;->deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_accolc_type;

    move-result-object v3

    iput-object v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    goto/16 :goto_0

    .line 2202
    :sswitch_e
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_imsi_addr_num_type;->deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_imsi_addr_num_type;

    move-result-object v3

    iput-object v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    goto/16 :goto_0

    .line 2206
    :sswitch_f
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_bc_config_type;->deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_bc_config_type;

    move-result-object v3

    iput-object v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    goto/16 :goto_0

    .line 2095
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_d
        0x6 -> :sswitch_0
        0x7 -> :sswitch_8
        0x9 -> :sswitch_6
        0xa -> :sswitch_4
        0x10 -> :sswitch_b
        0x11 -> :sswitch_c
        0x17 -> :sswitch_4
        0x19 -> :sswitch_9
        0x1a -> :sswitch_a
        0x1b -> :sswitch_4
        0x1e -> :sswitch_5
        0x24 -> :sswitch_4
        0x26 -> :sswitch_4
        0x27 -> :sswitch_4
        0x2b -> :sswitch_4
        0x2d -> :sswitch_4
        0x2e -> :sswitch_7
        0x2f -> :sswitch_4
        0x30 -> :sswitch_4
        0x31 -> :sswitch_e
        0x32 -> :sswitch_4
        0x33 -> :sswitch_4
        0x34 -> :sswitch_4
        0x35 -> :sswitch_f
        0x6c -> :sswitch_2
        0x1f47 -> :sswitch_4
        0x1f48 -> :sswitch_4
        0x1f49 -> :sswitch_4
        0x1f4a -> :sswitch_3
        0x1f4b -> :sswitch_3
        0x1f4c -> :sswitch_3
        0x1f58 -> :sswitch_4
        0x1f5b -> :sswitch_4
        0x2718 -> :sswitch_3
        0x2719 -> :sswitch_3
        0x271a -> :sswitch_3
        0x271d -> :sswitch_1
        0x271e -> :sswitch_1
        0x271f -> :sswitch_4
        0x2720 -> :sswitch_4
        0x2721 -> :sswitch_4
        0x2723 -> :sswitch_4
        0x2724 -> :sswitch_4
        0x2725 -> :sswitch_4
        0x2726 -> :sswitch_4
        0x2727 -> :sswitch_4
        0x272a -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public SIZE()I
    .locals 1

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/lit8 v0, v0, 0x10

    return v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    invoke-interface {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;->size()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1252
    const-string v1, "\n"

    .line 1253
    .local v1, "sep":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1255
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "elementID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recordNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->recordNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "object=\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
