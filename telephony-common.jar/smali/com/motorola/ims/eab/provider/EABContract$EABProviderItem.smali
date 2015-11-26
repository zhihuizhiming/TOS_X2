.class public Lcom/motorola/ims/eab/provider/EABContract$EABProviderItem;
.super Ljava/lang/Object;
.source "EABContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/ims/eab/provider/EABContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EABProviderItem"
.end annotation


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field public static final CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final CONTACT_LAST_UPDATED_TIMESTAMP:Ljava/lang/String; = "contact_last_updated_timestamp"

.field public static final CONTACT_NAME:Ljava/lang/String; = "contact_name"

.field public static final CONTACT_NUMBER:Ljava/lang/String; = "contact_number"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.motorola.rcs.eab.provider.eabprovider"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.motorola.rcs.eab.provider.eabprovider"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_ID:Ljava/lang/String; = "data_id"

.field public static final GROUPITEMS_NAME:Ljava/lang/String; = "EABGroupDetails"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final RAW_CONTACT_ID:Ljava/lang/String; = "raw_contact_id"

.field public static final TABLE_NAME:Ljava/lang/String; = "EABPresence"

.field public static final VIDEO_CALL_AVAILABILITY:Ljava/lang/String; = "video_call_availability"

.field public static final VIDEO_CALL_AVAILABILITY_TIMESTAMP:Ljava/lang/String; = "video_availability_timestamp"

.field public static final VIDEO_CALL_CAPABILITY:Ljava/lang/String; = "video_call_capability"

.field public static final VIDEO_CALL_CAPABILITY_TIMESTAMP:Ljava/lang/String; = "video_capability_timestamp"

.field public static final VIDEO_CALL_SERVICE_CONTACT_ADDRESS:Ljava/lang/String; = "video_contact_address"

.field public static final VOLTE_CALL_AVAILABILITY:Ljava/lang/String; = "volte_call_avalibility"

.field public static final VOLTE_CALL_AVAILABILITY_TIMESTAMP:Ljava/lang/String; = "volte_availability_timestamp"

.field public static final VOLTE_CALL_CAPABILITY:Ljava/lang/String; = "volte_call_capability"

.field public static final VOLTE_CALL_CAPABILITY_TIMESTAMP:Ljava/lang/String; = "volte_capability_timestamp"

.field public static final VOLTE_CALL_SERVICE_CONTACT_ADDRESS:Ljava/lang/String; = "volte_contact_address"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    sget-object v0, Lcom/motorola/ims/eab/provider/EABContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "EABPresence"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/ims/eab/provider/EABContract$EABProviderItem;->CONTENT_URI:Landroid/net/Uri;

    .line 182
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "contact_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "contact_number"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "volte_contact_address"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "volte_call_capability"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "volte_availability_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "volte_call_avalibility"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "volte_capability_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "video_contact_address"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "video_call_capability"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "video_capability_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "video_call_availability"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "video_availability_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "contact_last_updated_timestamp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/ims/eab/provider/EABContract$EABProviderItem;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
