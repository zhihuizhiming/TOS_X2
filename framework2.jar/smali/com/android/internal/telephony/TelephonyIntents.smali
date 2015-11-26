.class public Lcom/android/internal/telephony/TelephonyIntents;
.super Ljava/lang/Object;
.source "TelephonyIntents.java"


# static fields
.field public static final ACTION_ANY_DATA_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.ANY_DATA_STATE"

.field public static final ACTION_CALL_DISCONNECTED:Ljava/lang/String; = "com.motorola.android.intent.action.ACTION_CALL_DISCONNECTED"

.field public static final ACTION_CARRIER_SETUP:Ljava/lang/String; = "android.intent.action.ACTION_CARRIER_SETUP"

.field public static final ACTION_COLD_SIM_DETECTED:Ljava/lang/String; = "com.motorola.intent.action.cold_sim_detected"

.field public static final ACTION_DATA_CONNECTION_CONNECTED_TO_PROVISIONING_APN:Ljava/lang/String; = "android.intent.action.DATA_CONNECTION_CONNECTED_TO_PROVISIONING_APN"

.field public static final ACTION_DATA_CONNECTION_FAILED:Ljava/lang/String; = "android.intent.action.DATA_CONNECTION_FAILED"

.field public static final ACTION_EMERGENCY_CALLBACK_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

.field public static final ACTION_GET_REAL_DATA_NET_TYPE:Ljava/lang/String; = "com.motorola.android.intent.action.GET_REAL_DATA_NET_TYPE"

.field public static final ACTION_MANAGED_ROAMING_IND:Ljava/lang/String; = "qualcomm.intent.action.ACTION_MANAGED_ROAMING_IND"

.field public static final ACTION_NETWORK_COVERAGE_CHANGE:Ljava/lang/String; = "android.intent.action.ACTION_NETWORK_COVERAGE_CHANGE"

.field public static final ACTION_NETWORK_SET_TIME:Ljava/lang/String; = "android.intent.action.NETWORK_SET_TIME"

.field public static final ACTION_NETWORK_SET_TIMEZONE:Ljava/lang/String; = "android.intent.action.NETWORK_SET_TIMEZONE"

.field public static final ACTION_RADIO_TECHNOLOGY_CHANGED:Ljava/lang/String; = "android.intent.action.RADIO_TECHNOLOGY"

.field public static final ACTION_SERVICE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SERVICE_STATE"

.field public static final ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS:Ljava/lang/String; = "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

.field public static final ACTION_SIGNAL_STRENGTH_CHANGED:Ljava/lang/String; = "android.intent.action.SIG_STR"

.field public static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final ACTION_STATE_REJECT_CODE:Ljava/lang/String; = "com.motorola.intent.action.GET_REJECT_CODE"

.field public static final ACTION_SUBSCRIPTION_ACTIVATE_STATE_CHANGED:Ljava/lang/String; = "com.motorola.intent.action.SUBSCRIPTION_ACTIVATE_STATE_CHANGED"

.field public static final ACTION_TEL_UPGRADE_DOWNGRADE:Ljava/lang/String; = "com.motorola.android.intent.action.ACTION_TEL_UPGRADE_DOWNGRADE"

.field public static final ACTION_TUNEAWAY_STATE_RESPONSE:Ljava/lang/String; = "com.motorola.intent.action.TUNEAWAY_STATE_RESPONSE"

.field public static final ACTION_UNSOL_OEM_HOOK_RAW:Ljava/lang/String; = "com.motorola.android.intent.action.ACTION_UNSOL_OEM_HOOK_RAW"

.field public static final ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW:Ljava/lang/String; = "android.intent.action.ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

.field public static final ACTION_VOLTE_VOICE_CS_FALLBACK:Ljava/lang/String; = "com.motorola.android.intent.action.ACTION_VOLTE_VOICE_CS_FALLBACK"

.field public static final APNS_LOADED_FROM_XML_ACTION:Ljava/lang/String; = "android.provider.Telephony.APNS_LOADED_FROM_XML"

.field public static final CATEGORY_MCCMNC_PREFIX:Ljava/lang/String; = "android.intent.category.MCCMNC_"

.field public static final EXTRA_BGDATA_RESTRICTED:Ljava/lang/String; = "bgdata_restricted"

.field public static final EXTRA_COVERAGE_TAG:Ljava/lang/String; = "tag"

.field public static final EXTRA_CS_COVERAGE_CELLCOUNT:Ljava/lang/String; = "cellcount"

.field public static final EXTRA_CS_COVERAGE_CELLID:Ljava/lang/String; = "cellid"

.field public static final EXTRA_CS_COVERAGE_LOW:Ljava/lang/String; = "cs_low"

.field public static final EXTRA_CS_COVERAGE_QRADIO:Ljava/lang/String; = "qradio"

.field public static final EXTRA_CS_COVERAGE_RAT:Ljava/lang/String; = "rat"

.field public static final EXTRA_CS_COVERAGE_RATCOUNT:Ljava/lang/String; = "ratcount"

.field public static final EXTRA_CS_COVERAGE_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_LOADING_REASON:Ljava/lang/String; = "loadingReason"

.field public static final EXTRA_PLMN:Ljava/lang/String; = "plmn"

.field public static final EXTRA_PS_COVERAGE_LOW:Ljava/lang/String; = "ps_low"

.field public static final EXTRA_REG_REJECT_CODE:Ljava/lang/String; = "rejectCode"

.field public static final EXTRA_SHOW_PLMN:Ljava/lang/String; = "showPlmn"

.field public static final EXTRA_SHOW_SPN:Ljava/lang/String; = "showSpn"

.field public static final EXTRA_SPN:Ljava/lang/String; = "spn"

.field public static final EXTRA_SUB_ACTIVATED:Ljava/lang/String; = "subActivated"

.field public static final EXTRA_SUB_COMPLETED:Ljava/lang/String; = "subCompleted"

.field public static final EXTRA_SUB_DATA_COMPLETED:Ljava/lang/String; = "subDataCompleted"

.field public static final EXTRA_SUB_ERROR:Ljava/lang/String; = "subError"

.field public static final EXTRA_SUB_ID:Ljava/lang/String; = "subId"

.field public static final EXTRA_TUNEAWAY_SELECTION:Ljava/lang/String; = "tuneAwayChoice"

.field public static final EXTRA_TUNEAWAY_SELECTION_CHANGED:Ljava/lang/String; = "tuneAwaySet"

.field public static final REASON_APNS_CONFIG_FILE_CHANGED:I = 0x1

.field public static final REASON_APNS_RESTORED_TO_DEFAULT:I = 0x2

.field public static final REASON_APNS_SYNCED_FROM_BP:I = 0x3

.field public static final REASON_APNS_TABLE_CREATED:I = 0x0

.field public static final SECRET_CODE_ACTION:Ljava/lang/String; = "android.provider.Telephony.SECRET_CODE"

.field public static final SPN_STRINGS_UPDATED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SPN_STRINGS_UPDATED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
