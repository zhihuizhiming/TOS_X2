.class public Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DevicePolicyData"
.end annotation


# instance fields
.field mActivePasswordLength:I

.field mActivePasswordLetters:I

.field mActivePasswordLowerCase:I

.field mActivePasswordNonLetter:I

.field mActivePasswordNumeric:I

.field mActivePasswordQuality:I

.field mActivePasswordSimpleAllowed:Z

.field mActivePasswordSymbols:I

.field mActivePasswordUpperCase:I

.field final mAdminList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;",
            ">;"
        }
    .end annotation
.end field

.field final mAdminMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;",
            ">;"
        }
    .end annotation
.end field

.field mFCCFirstBootTime:J

.field mFCCStatus:I

.field mFailedPasswordAttempts:I

.field mLastMaximumTimeToLock:J

.field mNfcAuthAllowed:Z

.field mPasswordOwner:I

.field mUserHandle:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput v0, p0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    .line 177
    iput v0, p0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    .line 178
    iput v0, p0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    .line 179
    iput v0, p0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    .line 180
    iput v0, p0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    .line 181
    iput v0, p0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    .line 182
    iput v0, p0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    .line 183
    iput v0, p0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    .line 184
    iput v0, p0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 186
    iput-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSimpleAllowed:Z

    .line 188
    iput-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mNfcAuthAllowed:Z

    .line 191
    iput v0, p0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFCCStatus:I

    .line 192
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFCCFirstBootTime:J

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 197
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mLastMaximumTimeToLock:J

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 205
    iput p1, p0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    .line 206
    return-void
.end method
