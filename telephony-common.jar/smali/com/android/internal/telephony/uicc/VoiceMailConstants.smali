.class Lcom/android/internal/telephony/uicc/VoiceMailConstants;
.super Ljava/lang/Object;
.source "VoiceMailConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;
    }
.end annotation


# static fields
.field public static final EXACT_MATCH:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "VoiceMailConstants"

.field static final NAME:I = 0x0

.field public static final NO_MATCH:I = 0x0

.field static final NUMBER:I = 0x1

.field static final PARTNER_VOICEMAIL_PATH:Ljava/lang/String; = "etc/voicemail-conf.xml"

.field static final SIZE:I = 0x3

.field static final SPN_TAG:Ljava/lang/String; = "spn"

.field static final TAG:I = 0x2

.field public static final WILD_MATCH:I = 0x2


# instance fields
.field private CarrierVmMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    .line 92
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->loadVoiceMail()V

    .line 93
    return-void
.end method

.method private loadVoiceMail()V
    .locals 13

    .prologue
    .line 221
    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v10

    const-string v11, "etc/voicemail-conf.xml"

    invoke-direct {v8, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 225
    .local v8, "vmFile":Ljava/io/File;
    :try_start_0
    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .local v9, "vmReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 234
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 236
    const-string v10, "voicemail"

    invoke-static {v7, v10}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 239
    :goto_0
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 241
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 242
    .local v5, "name":Ljava/lang/String;
    const-string v10, "voicemail"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-nez v10, :cond_1

    .line 280
    if-eqz v9, :cond_0

    .line 281
    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 285
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "vmReader":Ljava/io/FileReader;
    :cond_0
    :goto_1
    return-void

    .line 226
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v10, "VoiceMailConstants"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Can\'t open "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "etc/voicemail-conf.xml"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 246
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9    # "vmReader":Ljava/io/FileReader;
    :cond_1
    const/4 v10, 0x3

    :try_start_3
    new-array v0, v10, [Ljava/lang/String;

    .line 247
    .local v0, "data":[Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "numeric"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 249
    .local v6, "numeric":Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "mvno_type"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 250
    .local v4, "mvno_type":Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "mvno_match_data"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "mvno_match_data":Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;-><init>(Lcom/android/internal/telephony/uicc/VoiceMailConstants;)V

    .line 253
    .local v2, "full_hashkey":Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;
    iput-object v6, v2, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;->numeric:Ljava/lang/String;

    .line 254
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 255
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 257
    iput-object v4, v2, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;->mvno_type:Ljava/lang/String;

    .line 258
    iput-object v3, v2, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;->mvno_match_data:Ljava/lang/String;

    .line 267
    :cond_2
    :goto_2
    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "carrier"

    invoke-interface {v7, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v10

    .line 268
    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v12, "vmnumber"

    invoke-interface {v7, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v10

    .line 269
    const/4 v10, 0x2

    const/4 v11, 0x0

    const-string v12, "vmtag"

    invoke-interface {v7, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v10

    .line 271
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 274
    .end local v0    # "data":[Ljava/lang/String;
    .end local v2    # "full_hashkey":Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;
    .end local v3    # "mvno_match_data":Ljava/lang/String;
    .end local v4    # "mvno_type":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "numeric":Ljava/lang/String;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v1

    .line 275
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    const-string v10, "VoiceMailConstants"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception in Voicemail parser "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 280
    if-eqz v9, :cond_0

    .line 281
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 283
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v10

    goto/16 :goto_1

    .line 262
    .restart local v0    # "data":[Ljava/lang/String;
    .restart local v2    # "full_hashkey":Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;
    .restart local v3    # "mvno_match_data":Ljava/lang/String;
    .restart local v4    # "mvno_type":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "numeric":Ljava/lang/String;
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_3
    const/4 v10, 0x0

    :try_start_6
    iput-object v10, v2, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;->mvno_type:Ljava/lang/String;

    .line 263
    const/4 v10, 0x0

    iput-object v10, v2, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;->mvno_match_data:Ljava/lang/String;
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 276
    .end local v0    # "data":[Ljava/lang/String;
    .end local v2    # "full_hashkey":Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;
    .end local v3    # "mvno_match_data":Ljava/lang/String;
    .end local v4    # "mvno_type":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "numeric":Ljava/lang/String;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v1

    .line 277
    .local v1, "e":Ljava/io/IOException;
    :try_start_7
    const-string v10, "VoiceMailConstants"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception in Voicemail parser "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 280
    if-eqz v9, :cond_0

    .line 281
    :try_start_8
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_1

    .line 279
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 280
    if-eqz v9, :cond_4

    .line 281
    :try_start_9
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 279
    :cond_4
    :goto_3
    throw v10

    .line 283
    :catch_4
    move-exception v11

    goto :goto_3
.end method


# virtual methods
.method containsCarrier(Ljava/lang/String;)I
    .locals 1
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->containsCarrier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method containsCarrier(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "carrier"    # Ljava/lang/String;
    .param p2, "spn"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 108
    new-instance v0, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;-><init>(Lcom/android/internal/telephony/uicc/VoiceMailConstants;)V

    .line 109
    .local v0, "full_key":Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;
    iput-object p1, v0, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;->numeric:Ljava/lang/String;

    .line 110
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 112
    const-string v3, "spn"

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;->mvno_type:Ljava/lang/String;

    .line 113
    iput-object p2, v0, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;->mvno_match_data:Ljava/lang/String;

    .line 116
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    .line 122
    .local v1, "result":I
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v1, :cond_1

    .line 123
    iput-object v4, v0, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;->mvno_type:Ljava/lang/String;

    .line 124
    iput-object v4, v0, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;->mvno_match_data:Ljava/lang/String;

    .line 126
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x2

    .line 131
    :cond_1
    :goto_1
    return v1

    .end local v1    # "result":I
    :cond_2
    move v1, v2

    .line 116
    goto :goto_0

    .restart local v1    # "result":I
    :cond_3
    move v1, v2

    .line 126
    goto :goto_1
.end method

.method getCarrierName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "carrier"    # Ljava/lang/String;
    .param p2, "match"    # I

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->getCarrierName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCarrierName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "carrier"    # Ljava/lang/String;
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "match"    # I

    .prologue
    .line 173
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->getVoiceMailData(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "data":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method getVoiceMailData(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 4
    .param p1, "carrier"    # Ljava/lang/String;
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "match"    # I

    .prologue
    const/4 v3, 0x0

    .line 140
    new-instance v1, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;-><init>(Lcom/android/internal/telephony/uicc/VoiceMailConstants;)V

    .line 141
    .local v1, "full_key":Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;
    iput-object p1, v1, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;->numeric:Ljava/lang/String;

    .line 144
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    .line 147
    const-string v2, "spn"

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;->mvno_type:Ljava/lang/String;

    .line 148
    iput-object p2, v1, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;->mvno_match_data:Ljava/lang/String;

    .line 154
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 157
    .local v0, "data":[Ljava/lang/String;
    return-object v0

    .line 149
    .end local v0    # "data":[Ljava/lang/String;
    :cond_1
    const/4 v2, 0x2

    if-ne p3, v2, :cond_0

    .line 150
    iput-object v3, v1, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;->mvno_type:Ljava/lang/String;

    .line 151
    iput-object v3, v1, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;->mvno_match_data:Ljava/lang/String;

    goto :goto_0
.end method

.method getVoiceMailNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "carrier"    # Ljava/lang/String;
    .param p2, "match"    # I

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->getVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "carrier"    # Ljava/lang/String;
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "match"    # I

    .prologue
    .line 192
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->getVoiceMailData(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "data":[Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method getVoiceMailTag(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "carrier"    # Ljava/lang/String;
    .param p2, "match"    # I

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->getVoiceMailTag(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getVoiceMailTag(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "carrier"    # Ljava/lang/String;
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "match"    # I

    .prologue
    .line 211
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->getVoiceMailData(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "data":[Ljava/lang/String;
    const/4 v1, 0x2

    aget-object v1, v0, v1

    return-object v1
.end method
