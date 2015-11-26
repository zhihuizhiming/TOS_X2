.class public final Lcom/motorola/android/telephony/SUPForAssistedDialing;
.super Ljava/lang/Object;
.source "SUPForAssistedDialing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/SUPForAssistedDialing$1;,
        Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final EVENT_MOT_QUIT:I = 0x2

.field private static final EVENT_MOT_SETTING_UPDATE:I = 0x1

.field public static final mADLock:Ljava/lang/Object;

.field private static mCurrentMcc:I

.field static mCurrentSid:I

.field private static mMccTable:Lcom/motorola/android/telephony/MCCTables;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    .line 28
    sput v1, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentMcc:I

    .line 29
    sput v1, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mADLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "SUPForAssistedDialing"

    iput-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->LOG_TAG:Ljava/lang/String;

    .line 113
    iput-object p1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 114
    new-instance v0, Lcom/motorola/android/telephony/MCCTables;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/MCCTables;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    .line 115
    new-instance v0, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;-><init>(Lcom/motorola/android/telephony/SUPForAssistedDialing;Lcom/motorola/android/telephony/SUPForAssistedDialing$1;)V

    iput-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    .line 116
    iget-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/telephony/SUPForAssistedDialing;Lcom/motorola/android/telephony/MCCEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/android/telephony/SUPForAssistedDialing;
    .param p1, "x1"    # Lcom/motorola/android/telephony/MCCEntry;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/SUPForAssistedDialing;->updateMotoSettings(Lcom/motorola/android/telephony/MCCEntry;)V

    return-void
.end method

.method private updateCountryDetailsFromUserTable()V
    .locals 2

    .prologue
    .line 360
    sget-object v1, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v1}, Lcom/motorola/android/telephony/MCCTables;->getCountryFromUserTable()Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    .line 362
    .local v0, "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    if-eqz v0, :cond_0

    .line 364
    iget-object v1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    invoke-virtual {v1, v0}, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;->update(Lcom/motorola/android/telephony/MCCEntry;)V

    .line 368
    :cond_0
    return-void
.end method

.method private updateCountryDetailsFromVZWTable(I)V
    .locals 2
    .param p1, "mcc"    # I

    .prologue
    .line 344
    sget-object v1, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v1, p1}, Lcom/motorola/android/telephony/MCCTables;->getCountryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    .line 346
    .local v0, "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    if-eqz v0, :cond_0

    .line 348
    iget-object v1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    invoke-virtual {v1, v0}, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;->update(Lcom/motorola/android/telephony/MCCEntry;)V

    .line 352
    :cond_0
    return-void
.end method

.method private updateMotoSettings(Lcom/motorola/android/telephony/MCCEntry;)V
    .locals 4
    .param p1, "entry"    # Lcom/motorola/android/telephony/MCCEntry;

    .prologue
    .line 84
    iget-object v1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 93
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v2, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mADLock:Ljava/lang/Object;

    monitor-enter v2

    .line 94
    :try_start_0
    const-string v1, "cur_country_mcc"

    iget v3, p1, Lcom/motorola/android/telephony/MCCEntry;->MCC:I

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    const-string v1, "cur_country_code"

    iget v3, p1, Lcom/motorola/android/telephony/MCCEntry;->countryCode:I

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 98
    const-string v1, "cur_country_name"

    iget-object v3, p1, Lcom/motorola/android/telephony/MCCEntry;->countryName:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 100
    const-string v1, "cur_country_idd"

    iget-object v3, p1, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 102
    const-string v1, "cur_country_ndd"

    iget-object v3, p1, Lcom/motorola/android/telephony/MCCEntry;->NDD:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 104
    const-string v1, "cur_country_area_code"

    iget-object v3, p1, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 106
    const-string v1, "cur_country_mdn_len"

    iget v3, p1, Lcom/motorola/android/telephony/MCCEntry;->MDNLength:I

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 108
    monitor-exit v2

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addUnknownCountry(Lcom/motorola/android/telephony/MCCEntry;)V
    .locals 1
    .param p1, "entry"    # Lcom/motorola/android/telephony/MCCEntry;

    .prologue
    .line 290
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 294
    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/MCCTables;->addUnknownCountry(Lcom/motorola/android/telephony/MCCEntry;)V

    .line 297
    iget-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;->update(Lcom/motorola/android/telephony/MCCEntry;)V

    goto :goto_0
.end method

.method public checkAndUpdateUnknownMcc(IIII)I
    .locals 5
    .param p1, "mcc"    # I
    .param p2, "sid"    # I
    .param p3, "tz"    # I
    .param p4, "DSTFlag"    # I

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 194
    .local v0, "isUnknownMccNotified":I
    sput p1, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentMcc:I

    .line 196
    sget-object v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v3, :cond_0

    .line 197
    const-string v3, "SUPForAssistedDialing"

    const-string v4, " MCC lookup table not initialized"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 248
    .end local v0    # "isUnknownMccNotified":I
    .local v1, "isUnknownMccNotified":I
    :goto_0
    return v1

    .line 201
    .end local v1    # "isUnknownMccNotified":I
    .restart local v0    # "isUnknownMccNotified":I
    :cond_0
    sget-object v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v3, p2, p3, p4}, Lcom/motorola/android/telephony/MCCTables;->checkUnknownMcc(III)I

    move-result v2

    .line 205
    .local v2, "tempMcc":I
    if-lez v2, :cond_1

    .line 207
    const/4 v0, 0x1

    .line 208
    sput p2, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    .line 210
    sget-object v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v3}, Lcom/motorola/android/telephony/MCCTables;->removeUnknownCountry()V

    .line 211
    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/SUPForAssistedDialing;->updateCountryDetailsFromVZWTable(I)V

    :goto_1
    move v1, v0

    .line 248
    .end local v0    # "isUnknownMccNotified":I
    .restart local v1    # "isUnknownMccNotified":I
    goto :goto_0

    .line 214
    .end local v1    # "isUnknownMccNotified":I
    .restart local v0    # "isUnknownMccNotified":I
    :cond_1
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 218
    sget v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    if-ne v3, p2, :cond_2

    .line 220
    const/4 v0, 0x2

    goto :goto_1

    .line 227
    :cond_2
    const/4 v0, 0x1

    .line 228
    sput p2, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    .line 229
    invoke-direct {p0}, Lcom/motorola/android/telephony/SUPForAssistedDialing;->updateCountryDetailsFromUserTable()V

    goto :goto_1

    .line 236
    :cond_3
    sget v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    if-eq v3, p2, :cond_4

    .line 240
    sput p2, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    .line 243
    :cond_4
    sget-object v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v3}, Lcom/motorola/android/telephony/MCCTables;->removeUnknownCountry()V

    .line 244
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public checkUnknownMcc(III)I
    .locals 1
    .param p1, "sid"    # I
    .param p2, "tz"    # I
    .param p3, "DSTflag"    # I

    .prologue
    .line 278
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v0, :cond_0

    .line 280
    const/4 v0, 0x0

    .line 282
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0, p1, p2, p3}, Lcom/motorola/android/telephony/MCCTables;->checkUnknownMcc(III)I

    move-result v0

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;->quit()V

    .line 373
    return-void
.end method

.method public getAllCountryList()[Lcom/motorola/android/telephony/MCCEntry;
    .locals 1

    .prologue
    .line 255
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v0, :cond_0

    .line 257
    const/4 v0, 0x0

    .line 259
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/MCCTables;->getAllCountryListInDb()[Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    goto :goto_0
.end method

.method public getEntryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;
    .locals 1
    .param p1, "mcc"    # I

    .prologue
    .line 266
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v0, :cond_0

    .line 268
    const/4 v0, 0x0

    .line 270
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/MCCTables;->getCountryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    goto :goto_0
.end method

.method public isCtryNameExist(Ljava/lang/String;)Z
    .locals 1
    .param p1, "countryName"    # Ljava/lang/String;

    .prologue
    .line 330
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v0, :cond_0

    .line 332
    const/4 v0, 0x0

    .line 335
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/MCCTables;->isCtryNameExist(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isUnknownCountryExist()Z
    .locals 1

    .prologue
    .line 317
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v0, :cond_0

    .line 319
    const/4 v0, 0x0

    .line 322
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/MCCTables;->isUnknownCountryExist()Z

    move-result v0

    goto :goto_0
.end method

.method public removeUnknownCountry()V
    .locals 1

    .prologue
    .line 305
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 310
    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/MCCTables;->removeUnknownCountry()V

    goto :goto_0
.end method

.method public updateCurrentCountryDetails(IIII)I
    .locals 5
    .param p1, "mcc"    # I
    .param p2, "sid"    # I
    .param p3, "tz"    # I
    .param p4, "DSTFlag"    # I

    .prologue
    .line 124
    const/4 v0, 0x1

    .line 127
    .local v0, "isUnknownMccNotified":I
    const/4 v2, 0x0

    .line 137
    .local v2, "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    sget-object v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v3, :cond_0

    move v1, v0

    .line 182
    .end local v0    # "isUnknownMccNotified":I
    .local v1, "isUnknownMccNotified":I
    :goto_0
    return v1

    .line 144
    .end local v1    # "isUnknownMccNotified":I
    .restart local v0    # "isUnknownMccNotified":I
    :cond_0
    sget v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentMcc:I

    if-ne v3, p1, :cond_1

    sget v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    if-ne v3, p2, :cond_1

    .line 146
    const/4 v0, 0x2

    move v1, v0

    .line 147
    .end local v0    # "isUnknownMccNotified":I
    .restart local v1    # "isUnknownMccNotified":I
    goto :goto_0

    .line 150
    .end local v1    # "isUnknownMccNotified":I
    .restart local v0    # "isUnknownMccNotified":I
    :cond_1
    sget-object v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v3, p1}, Lcom/motorola/android/telephony/MCCTables;->getCountryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v2

    .line 152
    if-eqz v2, :cond_3

    .line 156
    sget v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentMcc:I

    if-eq p1, v3, :cond_2

    .line 157
    const/4 v0, 0x1

    .line 158
    sput p1, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentMcc:I

    .line 159
    const-string v3, "SUPForAssistedDialing"

    const-string v4, "Updating the Current country"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    sget-object v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v3}, Lcom/motorola/android/telephony/MCCTables;->removeUnknownCountry()V

    .line 162
    iget-object v3, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    invoke-virtual {v3, v2}, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;->update(Lcom/motorola/android/telephony/MCCEntry;)V

    .line 169
    :goto_1
    sput p2, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    :goto_2
    move v1, v0

    .line 182
    .end local v0    # "isUnknownMccNotified":I
    .restart local v1    # "isUnknownMccNotified":I
    goto :goto_0

    .line 167
    .end local v1    # "isUnknownMccNotified":I
    .restart local v0    # "isUnknownMccNotified":I
    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    .line 178
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/motorola/android/telephony/SUPForAssistedDialing;->checkAndUpdateUnknownMcc(IIII)I

    move-result v0

    goto :goto_2
.end method
