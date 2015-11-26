.class public Lcom/motorola/android/internal/telephony/ApnSyncedToBP;
.super Ljava/lang/Object;
.source "ApnSyncedToBP.java"


# static fields
.field protected static final DBG:Z

.field protected static final LOG_TAG:Ljava/lang/String; = "GSM"

.field public static final SYS_PROP_FIRSTUP_AFTER_FR:Ljava/lang/String; = "persist.radio.firstupafterfr"

.field protected static final mMaxClass:I = 0x6


# instance fields
.field protected mApnNum3GPP:I

.field protected mApnNum3GPP2:I

.field protected mCachedApns3GPP:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field protected mCachedApns3GPP2:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field protected mIsChangedApns3GPP:Z

.field protected mIsChangedApns3GPP2:Z

.field private mLTESupportForSprint:Z

.field private mMMSCForSprint:Ljava/lang/String;

.field private mMmsPortForSprint:Ljava/lang/String;

.field private mMmsProxyForSprint:Ljava/lang/String;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/PhoneBase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "allApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataProfile;>;"
    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v3, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP:Z

    .line 50
    iput-boolean v3, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP2:Z

    .line 51
    iput v3, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mApnNum3GPP:I

    .line 52
    iput v3, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mApnNum3GPP2:I

    .line 55
    iput-boolean v3, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mLTESupportForSprint:Z

    .line 56
    const-string v1, "68.28.31.7"

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mMmsProxyForSprint:Ljava/lang/String;

    .line 57
    const-string v1, "80"

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mMmsPortForSprint:Ljava/lang/String;

    .line 58
    const-string v1, "http://mms.sprintpcs.com"

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mMMSCForSprint:Ljava/lang/String;

    .line 62
    new-array v1, v2, [Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mCachedApns3GPP:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 63
    new-array v1, v2, [Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mCachedApns3GPP2:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 64
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 65
    invoke-direct {p0, p2}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->cacheApnListFromAp(Ljava/util/ArrayList;)V

    .line 66
    sget-boolean v1, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new ApnSyncedToBP, with allApns:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 71
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mLTESupportForSprint:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    iput-boolean v3, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mLTESupportForSprint:Z

    goto :goto_0
.end method

.method private cacheApnListFromAp(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "allApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataProfile;>;"
    const/16 v12, 0xe

    const/16 v11, 0xd

    const/4 v10, 0x6

    const/4 v9, 0x1

    .line 80
    sget-boolean v6, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cacheApnListFromAp, with allApns:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 81
    :cond_0
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_12

    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, "curApnNum3GPP":I
    const/4 v2, 0x0

    .line 84
    .local v2, "curApnNum3GPP2":I
    new-array v3, v10, [Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 85
    .local v3, "currentApns3GPP":[Lcom/android/internal/telephony/dataconnection/ApnSetting;
    new-array v4, v10, [Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 86
    .local v4, "currentApns3GPP2":[Lcom/android/internal/telephony/dataconnection/ApnSetting;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataProfile;

    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/DataProfile;
    move-object v6, v0

    .line 87
    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    if-ge v6, v10, :cond_1

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    if-lez v6, :cond_1

    move-object v6, v0

    .line 88
    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/dataconnection/DataProfile;->bearer:I

    if-eq v6, v12, :cond_2

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DataProfile;->bearers:Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/dataconnection/DataProfile;->bearer:I

    if-nez v6, :cond_7

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DataProfile;->bearers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 92
    :cond_2
    iget-object v7, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mCachedApns3GPP:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    aget-object v6, v7, v6

    if-eqz v6, :cond_3

    iget-object v7, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mCachedApns3GPP:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    aget-object v7, v7, v6

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->equals2(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 95
    :cond_3
    sget-boolean v6, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Apns3GPP changed, old:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mCachedApns3GPP:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    aget-object v6, v8, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", new:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 98
    :cond_4
    iput-boolean v9, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP:Z

    .line 100
    :cond_5
    sget-boolean v6, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "3gpp apn new:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    :cond_6
    move-object v6, v0

    .line 101
    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v7, v6, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    aput-object v6, v3, v7

    .line 102
    add-int/lit8 v1, v1, 0x1

    :cond_7
    move-object v6, v0

    .line 104
    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/dataconnection/DataProfile;->bearer:I

    if-eq v6, v11, :cond_8

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DataProfile;->bearers:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/dataconnection/DataProfile;->bearer:I

    if-nez v6, :cond_1

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DataProfile;->bearers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 108
    :cond_8
    iget-object v7, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mCachedApns3GPP2:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    aget-object v6, v7, v6

    if-eqz v6, :cond_9

    iget-object v7, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mCachedApns3GPP2:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    aget-object v7, v7, v6

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->equals2(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 111
    :cond_9
    sget-boolean v6, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v6, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Apns3GPP2 changed, old:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mCachedApns3GPP:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    aget-object v6, v8, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", new:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 114
    :cond_a
    iput-boolean v9, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP2:Z

    .line 116
    :cond_b
    sget-boolean v6, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v6, :cond_c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "3gpp2 apn new:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    :cond_c
    move-object v6, v0

    .line 117
    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/DataProfile;
    aput-object v0, v4, v6

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 123
    :cond_d
    iget v6, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mApnNum3GPP:I

    if-eq v1, v6, :cond_e

    .line 124
    iput v1, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mApnNum3GPP:I

    .line 125
    iput-boolean v9, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP:Z

    .line 127
    :cond_e
    iget v6, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mApnNum3GPP2:I

    if-eq v2, v6, :cond_f

    .line 128
    iput v2, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mApnNum3GPP2:I

    .line 129
    iput-boolean v9, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP2:Z

    .line 131
    :cond_f
    sget-boolean v6, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v6, :cond_10

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mApnNum3GPP:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mApnNum3GPP:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mApnNum3GPP2:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mApnNum3GPP2:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "curApnNum3GPP:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",curApnNum3GPP2:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mIsChangedApns3GPP:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mIsChangedApns3GPP2:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP2:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 135
    :cond_10
    iget-boolean v6, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP:Z

    if-eqz v6, :cond_11

    iput-object v3, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mCachedApns3GPP:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 136
    :cond_11
    iget-boolean v6, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP2:Z

    if-eqz v6, :cond_12

    iput-object v4, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mCachedApns3GPP2:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 138
    .end local v1    # "curApnNum3GPP":I
    .end local v2    # "curApnNum3GPP2":I
    .end local v3    # "currentApns3GPP":[Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v4    # "currentApns3GPP2":[Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_12
    return-void
.end method

.method private getApnType(I)Ljava/lang/String;
    .locals 1
    .param p1, "apnClass"    # I

    .prologue
    .line 482
    packed-switch p1, :pswitch_data_0

    .line 492
    const-string v0, "internet,mms"

    .line 496
    .local v0, "retStr":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 484
    .end local v0    # "retStr":Ljava/lang/String;
    :pswitch_0
    const-string v0, "ota"

    .line 485
    .restart local v0    # "retStr":Ljava/lang/String;
    goto :goto_0

    .line 487
    .end local v0    # "retStr":Ljava/lang/String;
    :pswitch_1
    const-string v0, "pam"

    .line 488
    .restart local v0    # "retStr":Ljava/lang/String;
    goto :goto_0

    .line 482
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getIPType(Lcom/android/internal/telephony/dataconnection/ApnSetting;)I
    .locals 5
    .param p1, "apn"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    .line 153
    const/4 v3, 0x0

    .line 155
    .local v3, "result":I
    const/4 v2, 0x0

    .line 157
    .local v2, "isRoaming":Z
    :try_start_0
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRoaming()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 161
    :goto_0
    if-eqz v2, :cond_1

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->roamingProtocol:Ljava/lang/String;

    .line 162
    .local v1, "ipType":Ljava/lang/String;
    :goto_1
    const-string v4, "IP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 163
    const/4 v3, 0x0

    .line 169
    :cond_0
    :goto_2
    return v3

    .line 158
    .end local v1    # "ipType":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "exception in mPhone.getServiceState().getRoaming()"

    invoke-static {v4}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 161
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->protocol:Ljava/lang/String;

    goto :goto_1

    .line 164
    .restart local v1    # "ipType":Ljava/lang/String;
    :cond_2
    const-string v4, "IPV6"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 165
    const/4 v3, 0x1

    goto :goto_2

    .line 166
    :cond_3
    const-string v4, "IPV4V6"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    const/4 v3, 0x2

    goto :goto_2
.end method

.method private getProtocol(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 501
    packed-switch p1, :pswitch_data_0

    .line 509
    const-string v0, "IPV4V6"

    .line 512
    .local v0, "retStr":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 503
    .end local v0    # "retStr":Ljava/lang/String;
    :pswitch_0
    const-string v0, "IP"

    .line 504
    .restart local v0    # "retStr":Ljava/lang/String;
    goto :goto_0

    .line 506
    .end local v0    # "retStr":Ljava/lang/String;
    :pswitch_1
    const-string v0, "IPV6"

    .line 507
    .restart local v0    # "retStr":Ljava/lang/String;
    goto :goto_0

    .line 501
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private insertApnTable([Lcom/motorola/android/internal/telephony/ApnInfo;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "bpApnList"    # [Lcom/motorola/android/internal/telephony/ApnInfo;
    .param p2, "currentNumeric"    # Ljava/lang/String;
    .param p3, "is3GPP2"    # Z

    .prologue
    const/4 v8, 0x3

    .line 443
    if-eqz p1, :cond_0

    array-length v6, p1

    if-nez v6, :cond_1

    .line 478
    :cond_0
    return-void

    .line 445
    :cond_1
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 447
    .local v4, "resolver":Landroid/content/ContentResolver;
    move-object v1, p1

    .local v1, "arr$":[Lcom/motorola/android/internal/telephony/ApnInfo;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 449
    .local v0, "apnInfo":Lcom/motorola/android/internal/telephony/ApnInfo;
    iget-object v6, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 447
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 451
    :cond_3
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 452
    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "type"

    iget v7, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn_class:I

    invoke-direct {p0, v7}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->getApnType(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v6, "class"

    iget v7, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn_class:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 454
    const-string v6, "protocol"

    iget v7, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->ip_type:I

    invoke-direct {p0, v7}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->getProtocol(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v6, "carrier_enabled"

    iget-boolean v7, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->enabled:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 456
    const-string v6, "authtype"

    iget v7, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->auth_type:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 457
    const-string v6, "user"

    iget-object v7, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->username:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v6, "password"

    iget-object v7, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->password:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v6, "numeric"

    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v6, "mcc"

    const/4 v7, 0x0

    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v6, "mnc"

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v6, "roaming_protocol"

    iget v7, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->ip_type:I

    invoke-direct {p0, v7}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->getProtocol(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v6, "apn"

    iget-object v7, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string v6, "name"

    iget-object v7, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v7, "bearer"

    if-eqz p3, :cond_4

    const-string v6, "13"

    :goto_2
    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string v6, "preloaded"

    const-string v7, "true"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v6, "mmsproxy"

    iget-object v7, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mMmsProxyForSprint:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v6, "mmsport"

    iget-object v7, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mMmsPortForSprint:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string v6, "mmsc"

    iget-object v7, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mMMSCForSprint:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    sget-object v6, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 475
    sget-boolean v6, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "maybeUpdateApnListFromBP:insert data to table carriers, with values ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 466
    :cond_4
    const-string v6, "14"

    goto :goto_2
.end method

.method protected static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 517
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmDCT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return-void
.end method

.method public static syncPreferredApnSetting(ILcom/android/internal/telephony/dataconnection/ApnSetting;)V
    .locals 14
    .param p0, "bearer"    # I
    .param p1, "preferredApn"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    const/4 v7, -0x1

    const/4 v2, 0x1

    .line 385
    const/4 v11, 0x0

    .line 386
    .local v11, "ratType":I
    packed-switch p0, :pswitch_data_0

    .line 397
    :pswitch_0
    const/4 v1, 0x0

    .line 400
    .local v1, "profileType":I
    :goto_0
    if-ne v1, v2, :cond_3

    .line 401
    const/4 v11, 0x3

    .line 405
    :goto_1
    const/4 v5, 0x0

    .line 406
    .local v5, "ipType":I
    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->protocol:Ljava/lang/String;

    const-string v4, "IP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 407
    const/4 v5, 0x0

    .line 413
    :cond_0
    :goto_2
    new-instance v12, Lcom/motorola/android/internal/telephony/ApnJni;

    invoke-direct {v12}, Lcom/motorola/android/internal/telephony/ApnJni;-><init>()V

    .line 414
    .local v12, "apnJniIntf":Lcom/motorola/android/internal/telephony/ApnJni;
    new-instance v0, Lcom/motorola/android/internal/telephony/ApnInfo;

    iget v3, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    iget-boolean v6, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->carrierEnabled:Z

    iget v8, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->authType:I

    iget-object v9, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->user:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->password:Ljava/lang/String;

    invoke-direct/range {v0 .. v11}, Lcom/motorola/android/internal/telephony/ApnInfo;-><init>(IIILjava/lang/String;IZIILjava/lang/String;Ljava/lang/String;I)V

    .line 427
    .local v0, "apnInfo":Lcom/motorola/android/internal/telephony/ApnInfo;
    iget v3, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxConns:I

    iput v3, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->max_conn:I

    .line 428
    iget v3, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxConns_t:I

    iput v3, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->max_conn_t:I

    .line 429
    iget v3, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->waitTime:I

    iput v3, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->wait_time:I

    .line 431
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update preferred apn,apninfo is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 432
    :cond_1
    invoke-static {v2, v1, v0}, Lcom/motorola/android/internal/telephony/ApnJni;->setApn(IILcom/motorola/android/internal/telephony/ApnInfo;)I

    move-result v13

    .line 433
    .local v13, "ret":I
    if-ne v13, v7, :cond_6

    .line 434
    sget-boolean v2, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update preferred apn to BP fail,apninfo is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 438
    :cond_2
    :goto_3
    return-void

    .line 394
    .end local v0    # "apnInfo":Lcom/motorola/android/internal/telephony/ApnInfo;
    .end local v1    # "profileType":I
    .end local v5    # "ipType":I
    .end local v12    # "apnJniIntf":Lcom/motorola/android/internal/telephony/ApnJni;
    .end local v13    # "ret":I
    :pswitch_1
    const/4 v1, 0x1

    .line 395
    .restart local v1    # "profileType":I
    goto :goto_0

    .line 403
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 408
    .restart local v5    # "ipType":I
    :cond_4
    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->protocol:Ljava/lang/String;

    const-string v4, "IPV6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 409
    const/4 v5, 0x1

    goto :goto_2

    .line 410
    :cond_5
    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->protocol:Ljava/lang/String;

    const-string v4, "IPV4V6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 411
    const/4 v5, 0x2

    goto :goto_2

    .line 436
    .restart local v0    # "apnInfo":Lcom/motorola/android/internal/telephony/ApnInfo;
    .restart local v12    # "apnJniIntf":Lcom/motorola/android/internal/telephony/ApnJni;
    .restart local v13    # "ret":I
    :cond_6
    sget-boolean v2, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update preferred apn to BP succeed,apninfo is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 386
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updateApnListToBp(I[Lcom/android/internal/telephony/dataconnection/ApnSetting;)V
    .locals 24
    .param p1, "profileType"    # I
    .param p2, "cachedApns"    # [Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    .line 173
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "need update BP apn list for profileType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 174
    :cond_0
    const/4 v13, 0x0

    .line 175
    .local v13, "ratType":I
    const/4 v3, 0x6

    new-array v15, v3, [Lcom/motorola/android/internal/telephony/ApnInfo;

    .line 176
    .local v15, "apnInfoList":[Lcom/motorola/android/internal/telephony/ApnInfo;
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "updateBPApnList:prepare to get list from BP"

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 177
    :cond_1
    new-instance v16, Lcom/motorola/android/internal/telephony/ApnJni;

    invoke-direct/range {v16 .. v16}, Lcom/motorola/android/internal/telephony/ApnJni;-><init>()V

    .line 178
    .local v16, "apnJniIntf":Lcom/motorola/android/internal/telephony/ApnJni;
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "updateBPApnList:new apnjni ok"

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 179
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/motorola/android/internal/telephony/ApnJni;->listApns(I)[Lcom/motorola/android/internal/telephony/ApnInfo;

    move-result-object v19

    .line 180
    .local v19, "bpApnsList":[Lcom/motorola/android/internal/telephony/ApnInfo;
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "updateBPApnList:has gotten list from BP"

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 182
    :cond_3
    if-eqz v19, :cond_7

    move-object/from16 v0, v19

    array-length v3, v0

    if-eqz v3, :cond_7

    .line 183
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_4

    const-string v3, "updateBPApnList:get list from BP"

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 184
    :cond_4
    move-object/from16 v17, v19

    .local v17, "arr$":[Lcom/motorola/android/internal/telephony/ApnInfo;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v21, 0x0

    .local v21, "i$":I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    aget-object v18, v17, v21

    .line 185
    .local v18, "bpApnInfo":Lcom/motorola/android/internal/telephony/ApnInfo;
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBPApnList:get apninfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 187
    :cond_5
    move-object/from16 v0, v18

    iget v3, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn_class:I

    if-lez v3, :cond_6

    move-object/from16 v0, v18

    iget v3, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn_class:I

    const/4 v4, 0x6

    if-ge v3, v4, :cond_6

    .line 191
    move-object/from16 v0, v18

    iget v3, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn_class:I

    aget-object v3, v15, v3

    if-nez v3, :cond_6

    .line 192
    move-object/from16 v0, v18

    iget v3, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn_class:I

    aput-object v18, v15, v3

    .line 184
    :cond_6
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 197
    .end local v17    # "arr$":[Lcom/motorola/android/internal/telephony/ApnInfo;
    .end local v18    # "bpApnInfo":Lcom/motorola/android/internal/telephony/ApnInfo;
    .end local v21    # "i$":I
    .end local v22    # "len$":I
    :cond_7
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_8

    const-string v3, "updateBPApnList:can not get list from BP"

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 200
    :cond_8
    const/16 v20, 0x1

    .local v20, "i":I
    :goto_1
    move-object/from16 v0, p2

    array-length v3, v0

    move/from16 v0, v20

    if-ge v0, v3, :cond_13

    .line 201
    aget-object v14, p2, v20

    .line 202
    .local v14, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-nez v14, :cond_b

    .line 204
    aget-object v3, v15, v20

    if-eqz v3, :cond_9

    .line 205
    aget-object v3, v15, v20

    iget v3, v3, Lcom/motorola/android/internal/telephony/ApnInfo;->index:I

    move/from16 v0, p1

    invoke-static {v3, v0}, Lcom/motorola/android/internal/telephony/ApnJni;->deleteApn(II)I

    move-result v23

    .line 206
    .local v23, "ret":I
    const/4 v3, -0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_a

    .line 207
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to delete apn info:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v15, v20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 200
    .end local v23    # "ret":I
    :cond_9
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 209
    .restart local v23    # "ret":I
    :cond_a
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sccuess to delete apn info:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v15, v20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 213
    .end local v23    # "ret":I
    :cond_b
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_e

    .line 214
    const/4 v13, 0x3

    .line 218
    :goto_3
    new-instance v2, Lcom/motorola/android/internal/telephony/ApnInfo;

    iget v3, v14, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    aget-object v3, v15, v3

    if-nez v3, :cond_f

    const/4 v4, 0x0

    :goto_4
    iget v5, v14, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    iget-object v6, v14, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->getIPType(Lcom/android/internal/telephony/dataconnection/ApnSetting;)I

    move-result v7

    iget-boolean v8, v14, Lcom/android/internal/telephony/dataconnection/DataProfile;->carrierEnabled:Z

    const/4 v9, -0x1

    iget v10, v14, Lcom/android/internal/telephony/dataconnection/DataProfile;->authType:I

    iget-object v11, v14, Lcom/android/internal/telephony/dataconnection/DataProfile;->user:Ljava/lang/String;

    iget-object v12, v14, Lcom/android/internal/telephony/dataconnection/DataProfile;->password:Ljava/lang/String;

    move/from16 v3, p1

    invoke-direct/range {v2 .. v13}, Lcom/motorola/android/internal/telephony/ApnInfo;-><init>(IIILjava/lang/String;IZIILjava/lang/String;Ljava/lang/String;I)V

    .line 232
    .local v2, "apnInfo":Lcom/motorola/android/internal/telephony/ApnInfo;
    iget v3, v14, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxConns:I

    iput v3, v2, Lcom/motorola/android/internal/telephony/ApnInfo;->max_conn:I

    .line 233
    iget v3, v14, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxConns_t:I

    iput v3, v2, Lcom/motorola/android/internal/telephony/ApnInfo;->max_conn_t:I

    .line 234
    iget v3, v14, Lcom/android/internal/telephony/dataconnection/DataProfile;->waitTime:I

    iput v3, v2, Lcom/motorola/android/internal/telephony/ApnInfo;->wait_time:I

    .line 236
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBPApnList,apninfo is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 237
    :cond_c
    const/16 v23, -0x1

    .line 238
    .restart local v23    # "ret":I
    iget v3, v14, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    aget-object v3, v15, v3

    if-eqz v3, :cond_10

    .line 239
    iget v3, v14, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    aget-object v3, v15, v3

    iget v3, v3, Lcom/motorola/android/internal/telephony/ApnInfo;->rat_type:I

    iput v3, v2, Lcom/motorola/android/internal/telephony/ApnInfo;->rat_type:I

    .line 240
    iget v3, v14, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    aget-object v3, v15, v3

    iget v3, v3, Lcom/motorola/android/internal/telephony/ApnInfo;->index:I

    move/from16 v0, p1

    invoke-static {v3, v0, v2}, Lcom/motorola/android/internal/telephony/ApnJni;->setApn(IILcom/motorola/android/internal/telephony/ApnInfo;)I

    move-result v23

    .line 241
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "to setApn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v14, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    aget-object v4, v15, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "to:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 246
    :cond_d
    :goto_5
    const/4 v3, -0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_12

    .line 247
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBPApnList apn to BP fail,apninfo is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 216
    .end local v2    # "apnInfo":Lcom/motorola/android/internal/telephony/ApnInfo;
    .end local v23    # "ret":I
    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 218
    :cond_f
    iget v3, v14, Lcom/android/internal/telephony/dataconnection/DataProfile;->apnClass:I

    aget-object v3, v15, v3

    iget v4, v3, Lcom/motorola/android/internal/telephony/ApnInfo;->index:I

    goto/16 :goto_4

    .line 243
    .restart local v2    # "apnInfo":Lcom/motorola/android/internal/telephony/ApnInfo;
    .restart local v23    # "ret":I
    :cond_10
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_11

    const-string v3, "to createApn"

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 244
    :cond_11
    move/from16 v0, p1

    invoke-static {v0, v2}, Lcom/motorola/android/internal/telephony/ApnJni;->createApn(ILcom/motorola/android/internal/telephony/ApnInfo;)I

    move-result v23

    goto :goto_5

    .line 249
    :cond_12
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBPApnList apn to BP succeed,apninfo is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 253
    .end local v2    # "apnInfo":Lcom/motorola/android/internal/telephony/ApnInfo;
    .end local v14    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v23    # "ret":I
    :cond_13
    return-void
.end method

.method private updateApnTable([Lcom/motorola/android/internal/telephony/ApnInfo;Z)V
    .locals 11
    .param p1, "bpApnList"    # [Lcom/motorola/android/internal/telephony/ApnInfo;
    .param p2, "is3GPP2"    # Z

    .prologue
    .line 347
    if-eqz p1, :cond_0

    array-length v9, p1

    if-nez v9, :cond_1

    .line 380
    :cond_0
    return-void

    .line 349
    :cond_1
    iget-object v9, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 352
    .local v5, "resolver":Landroid/content/ContentResolver;
    const-string v6, "apn = ? AND bearer = ? AND class = 2"

    .line 355
    .local v6, "selection":Ljava/lang/String;
    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/String;

    .line 356
    .local v7, "selectionArgs":[Ljava/lang/String;
    sget-boolean v9, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "maybeUpdateApnListFromBP: selection = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 358
    :cond_2
    move-object v1, p1

    .local v1, "arr$":[Lcom/motorola/android/internal/telephony/ApnInfo;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 361
    .local v0, "apnInfo":Lcom/motorola/android/internal/telephony/ApnInfo;
    iget-object v9, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn:Ljava/lang/String;

    if-eqz v9, :cond_3

    iget-object v9, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_3

    iget v9, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn_class:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_4

    .line 358
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 364
    :cond_4
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 365
    .local v8, "values":Landroid/content/ContentValues;
    const-string v9, "carrier_enabled"

    iget-boolean v10, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->enabled:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 366
    const/4 v9, 0x0

    iget-object v10, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn:Ljava/lang/String;

    aput-object v10, v7, v9

    .line 367
    const/4 v10, 0x1

    if-eqz p2, :cond_6

    const-string v9, "13"

    :goto_2
    aput-object v9, v7, v10

    .line 369
    :try_start_0
    sget-object v9, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v9, v8, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :cond_5
    :goto_3
    sget-boolean v9, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "maybeUpdateApnListFromBP: update table carriers succeed, with values = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", selectionArgs = ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 367
    :cond_6
    const-string v9, "14"

    goto :goto_2

    .line 370
    :catch_0
    move-exception v2

    .line 371
    .local v2, "e":Ljava/lang/NullPointerException;
    sget-boolean v9, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "maybeUpdateApnListFromBP: update table carriers failed, uri or values are null, with values = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", selectionArgs = ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    goto/16 :goto_3
.end method


# virtual methods
.method public checkAndSyncApnList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "allApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataProfile;>;"
    const/4 v1, 0x0

    .line 141
    iput-boolean v1, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP:Z

    .line 142
    iput-boolean v1, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP2:Z

    .line 143
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->cacheApnListFromAp(Ljava/util/ArrayList;)V

    .line 144
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mCachedApns3GPP:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->updateApnListToBp(I[Lcom/android/internal/telephony/dataconnection/ApnSetting;)V

    .line 147
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP2:Z

    if-eqz v0, :cond_1

    .line 148
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mCachedApns3GPP2:[Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-direct {p0, v0, v1}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->updateApnListToBp(I[Lcom/android/internal/telephony/dataconnection/ApnSetting;)V

    .line 150
    :cond_1
    return-void
.end method

.method public maybeUpdateApnListFromBP(Ljava/lang/String;)V
    .locals 17
    .param p1, "currentNumeric"    # Ljava/lang/String;

    .prologue
    .line 257
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "call maybeUpdateApnListFromBP()"

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 260
    :cond_0
    const-string v3, "1"

    const-string v4, "persist.radio.firstupafterfr"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 344
    :cond_1
    :goto_0
    return-void

    .line 263
    :cond_2
    new-instance v8, Lcom/motorola/android/internal/telephony/ApnJni;

    invoke-direct {v8}, Lcom/motorola/android/internal/telephony/ApnJni;-><init>()V

    .line 264
    .local v8, "apnJniIntf":Lcom/motorola/android/internal/telephony/ApnJni;
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "maybeUpdateApnListFromBP:new apnjni succeed!"

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 265
    :cond_3
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnJni;->listApns(I)[Lcom/motorola/android/internal/telephony/ApnInfo;

    move-result-object v9

    .line 266
    .local v9, "bpApnsList1":[Lcom/motorola/android/internal/telephony/ApnInfo;
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnJni;->listApns(I)[Lcom/motorola/android/internal/telephony/ApnInfo;

    move-result-object v10

    .line 267
    .local v10, "bpApnsList2":[Lcom/motorola/android/internal/telephony/ApnInfo;
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_4

    const-string v3, "maybeUpdateApnListFromBP:get list from BP succeed!"

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 271
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mLTESupportForSprint:Z

    if-eqz v3, :cond_f

    .line 274
    if-eqz v9, :cond_5

    array-length v3, v9

    if-nez v3, :cond_6

    :cond_5
    if-eqz v10, :cond_1

    array-length v3, v10

    if-eqz v3, :cond_1

    .line 276
    :cond_6
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 280
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "mmsproxy"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "mmsport"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "mmsc"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "numeric = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mvno_type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=\'\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 286
    .local v15, "mmsCursor":Landroid/database/Cursor;
    if-eqz v15, :cond_7

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_c

    .line 287
    :cond_7
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_8

    const-string v3, "maybeUpdateApnListFromBP: content provider returned no data for mmsc!"

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 309
    :cond_8
    :goto_1
    if-eqz v15, :cond_9

    .line 310
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 311
    const/4 v15, 0x0

    .line 315
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "numeric = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in (\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ota"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "pam"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "internet"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mvno_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 319
    .local v16, "selection":Ljava/lang/String;
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 320
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maybeUpdateApnListFromBP: delete data from table carriers, with selection = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 324
    :cond_a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1, v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->insertApnTable([Lcom/motorola/android/internal/telephony/ApnInfo;Ljava/lang/String;Z)V

    .line 325
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->insertApnTable([Lcom/motorola/android/internal/telephony/ApnInfo;Ljava/lang/String;Z)V

    .line 329
    new-instance v14, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.APNS_LOADED_FROM_XML"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .local v14, "intent":Landroid/content/Intent;
    const-string v3, "loadingReason"

    const/4 v4, 0x3

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 332
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 334
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_b

    const-string v3, "maybeUpdateApnListFromBP: broadcase intent Telephony.Intents.APNS_LOADED_FROM_XML_ACTION"

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .line 343
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v15    # "mmsCursor":Landroid/database/Cursor;
    .end local v16    # "selection":Ljava/lang/String;
    :cond_b
    :goto_2
    const-string v3, "persist.radio.firstupafterfr"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 290
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v15    # "mmsCursor":Landroid/database/Cursor;
    :cond_c
    const-string v3, "mmsproxy"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 291
    .local v13, "colMmsProxyIndex":I
    const-string v3, "mmsport"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 292
    .local v12, "colMmsPortIndex":I
    const-string v3, "mmsc"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 295
    .local v11, "colMmsMMSCIndex":I
    :cond_d
    invoke-interface {v15, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-interface {v15, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_e

    .line 297
    invoke-interface {v15, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mMmsProxyForSprint:Ljava/lang/String;

    .line 298
    invoke-interface {v15, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mMmsPortForSprint:Ljava/lang/String;

    .line 299
    invoke-interface {v15, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mMMSCForSprint:Ljava/lang/String;

    .line 300
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->DBG:Z

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maybeUpdateApnListFromBP: mMmsProxyForSprint = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mMmsProxyForSprint:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mMmsPortForSprint = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mMmsPortForSprint:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mMMSCForSprint = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mMMSCForSprint:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 306
    :cond_e
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_d

    goto/16 :goto_1

    .line 337
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v11    # "colMmsMMSCIndex":I
    .end local v12    # "colMmsPortIndex":I
    .end local v13    # "colMmsProxyIndex":I
    .end local v15    # "mmsCursor":Landroid/database/Cursor;
    :cond_f
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->updateApnTable([Lcom/motorola/android/internal/telephony/ApnInfo;Z)V

    .line 338
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->updateApnTable([Lcom/motorola/android/internal/telephony/ApnInfo;Z)V

    goto/16 :goto_2
.end method
