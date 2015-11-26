.class public final Landroid/provider/Telephony$Mms$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Mms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final CONTENT_CHANGED_ACTION:Ljava/lang/String; = "android.intent.action.CONTENT_CHANGED"

.field public static final DELETED_CONTENTS:Ljava/lang/String; = "deleted_contents"

.field public static final DELETED_MMS_LIST:Ljava/lang/String; = "deleted_mms_list"

.field public static final EXTRA_MMS_DATE:Ljava/lang/String; = "date"

.field public static final EXTRA_MMS_MESSAGE_BOX:Ljava/lang/String; = "message_box"

.field public static final EXTRA_MMS_MESSAGE_TYPE:Ljava/lang/String; = "message_type"

.field public static final EXTRA_MMS_READ:Ljava/lang/String; = "read"

.field public static final EXTRA_MMS_SEEN:Ljava/lang/String; = "seen"

.field public static final EXTRA_MMS_TEXT_ONLY:Ljava/lang/String; = "text_only"

.field public static final EXTRA_MMS_TID:Ljava/lang/String; = "tid"

.field public static final EXTRA_MMS_URI:Ljava/lang/String; = "uri"

.field public static final MMS_DELETED_ACTION:Ljava/lang/String; = "com.motorola.android.intent.action.MMS_DELETED"

.field public static final MMS_INSERTED_ACTION:Ljava/lang/String; = "com.motorola.android.intent.action.MMS_INSERTED"

.field public static final MMS_UPDATED_ACTION:Ljava/lang/String; = "com.motorola.android.intent.action.MMS_UPDATED"

.field public static final OLD_MESSAGE_BOX:Ljava/lang/String; = "old_msg_box"

.field public static final UPDATED_MMS_LIST:Ljava/lang/String; = "updated_mms_list"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2439
    return-void
.end method
