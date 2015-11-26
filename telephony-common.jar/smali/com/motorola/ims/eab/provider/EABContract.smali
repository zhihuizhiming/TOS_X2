.class public final Lcom/motorola/ims/eab/provider/EABContract;
.super Ljava/lang/Object;
.source "EABContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/ims/eab/provider/EABContract$EABProviderItem;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.motorola.rcs.eab"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final INTENT_EAB_NEW_CONTACT_INSERTED:Ljava/lang/String; = "com.motorola.rcs.eab.EAB_NEW_CONTACT_INSERTED"

.field public static final NEW_PHONE_NUMBER:Ljava/lang/String; = "newPhoneNumber"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "content://com.motorola.rcs.eab"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/ims/eab/provider/EABContract;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method
