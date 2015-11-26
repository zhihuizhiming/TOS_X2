.class Landroid/mtp/MtpPropertyGroup;
.super Ljava/lang/Object;
.source "MtpPropertyGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpPropertyGroup$Property;
    }
.end annotation


# static fields
.field private static final FORMAT_WHERE:Ljava/lang/String; = "format=?"

.field private static final ID_FORMAT_WHERE:Ljava/lang/String; = "_id=? AND format=?"

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field private static final PARENT_FORMAT_WHERE:Ljava/lang/String; = "parent=? AND format=?"

.field private static final PARENT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final TAG:Ljava/lang/String; = "MtpPropertyGroup"


# instance fields
.field private mColumns:[Ljava/lang/String;

.field private final mDatabase:Landroid/mtp/MtpDatabase;

.field private final mPackageName:Ljava/lang/String;

.field private final mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

.field private final mProvider:Landroid/content/IContentProvider;

.field private final mUri:Landroid/net/Uri;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 5
    .param p1, "database"    # Landroid/mtp/MtpDatabase;
    .param p2, "provider"    # Landroid/content/IContentProvider;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "volume"    # Ljava/lang/String;
    .param p5, "properties"    # [I

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Landroid/mtp/MtpPropertyGroup;->mDatabase:Landroid/mtp/MtpDatabase;

    .line 72
    iput-object p2, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    .line 73
    iput-object p3, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    .line 75
    invoke-static {p4}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    .line 77
    array-length v1, p5

    .line 78
    .local v1, "count":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    .local v0, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "_id"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    new-array v3, v1, [Landroid/mtp/MtpPropertyGroup$Property;

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    .line 82
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 83
    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget v4, p5, v2

    invoke-direct {p0, v4, v0}, Landroid/mtp/MtpPropertyGroup;->createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;

    move-result-object v4

    aput-object v4, v3, v2

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 86
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    .line 87
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 88
    iget-object v4, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v2

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 90
    :cond_1
    return-void
.end method

.method private createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;
    .locals 5
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/mtp/MtpPropertyGroup$Property;"
        }
    .end annotation

    .prologue
    .line 93
    .local p2, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 96
    .local v0, "column":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 187
    const/4 v1, 0x0

    .line 188
    .local v1, "type":I
    const-string v2, "MtpPropertyGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unsupported property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_0
    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    .line 196
    :goto_1
    return-object v2

    .line 100
    .end local v1    # "type":I
    :sswitch_0
    const v1, 0xffff

    .line 101
    .restart local v1    # "type":I
    goto :goto_0

    .line 104
    .end local v1    # "type":I
    :sswitch_1
    const/4 v1, 0x6

    .line 105
    .restart local v1    # "type":I
    goto :goto_0

    .line 108
    .end local v1    # "type":I
    :sswitch_2
    const-string/jumbo v0, "storage_id"

    .line 109
    const/4 v1, 0x6

    .line 110
    .restart local v1    # "type":I
    goto :goto_0

    .line 112
    .end local v1    # "type":I
    :sswitch_3
    const-string v0, "format"

    .line 113
    const/4 v1, 0x4

    .line 114
    .restart local v1    # "type":I
    goto :goto_0

    .line 117
    .end local v1    # "type":I
    :sswitch_4
    const/4 v1, 0x4

    .line 118
    .restart local v1    # "type":I
    goto :goto_0

    .line 120
    .end local v1    # "type":I
    :sswitch_5
    const-string v0, "_size"

    .line 121
    const/16 v1, 0x8

    .line 122
    .restart local v1    # "type":I
    goto :goto_0

    .line 124
    .end local v1    # "type":I
    :sswitch_6
    const-string v0, "_data"

    .line 125
    const v1, 0xffff

    .line 126
    .restart local v1    # "type":I
    goto :goto_0

    .line 128
    .end local v1    # "type":I
    :sswitch_7
    const-string/jumbo v0, "title"

    .line 129
    const v1, 0xffff

    .line 130
    .restart local v1    # "type":I
    goto :goto_0

    .line 132
    .end local v1    # "type":I
    :sswitch_8
    const-string v0, "date_modified"

    .line 133
    const v1, 0xffff

    .line 134
    .restart local v1    # "type":I
    goto :goto_0

    .line 136
    .end local v1    # "type":I
    :sswitch_9
    const-string v0, "date_added"

    .line 137
    const v1, 0xffff

    .line 138
    .restart local v1    # "type":I
    goto :goto_0

    .line 140
    .end local v1    # "type":I
    :sswitch_a
    const-string/jumbo v0, "year"

    .line 141
    const v1, 0xffff

    .line 142
    .restart local v1    # "type":I
    goto :goto_0

    .line 144
    .end local v1    # "type":I
    :sswitch_b
    const-string/jumbo v0, "parent"

    .line 145
    const/4 v1, 0x6

    .line 146
    .restart local v1    # "type":I
    goto :goto_0

    .line 149
    .end local v1    # "type":I
    :sswitch_c
    const-string/jumbo v0, "storage_id"

    .line 150
    const/16 v1, 0xa

    .line 151
    .restart local v1    # "type":I
    goto :goto_0

    .line 153
    .end local v1    # "type":I
    :sswitch_d
    const-string v0, "duration"

    .line 154
    const/4 v1, 0x6

    .line 155
    .restart local v1    # "type":I
    goto :goto_0

    .line 157
    .end local v1    # "type":I
    :sswitch_e
    const-string/jumbo v0, "track"

    .line 158
    const/4 v1, 0x4

    .line 159
    .restart local v1    # "type":I
    goto :goto_0

    .line 161
    .end local v1    # "type":I
    :sswitch_f
    const-string v0, "_display_name"

    .line 162
    const v1, 0xffff

    .line 163
    .restart local v1    # "type":I
    goto :goto_0

    .line 165
    .end local v1    # "type":I
    :sswitch_10
    const v1, 0xffff

    .line 166
    .restart local v1    # "type":I
    goto :goto_0

    .line 168
    .end local v1    # "type":I
    :sswitch_11
    const v1, 0xffff

    .line 169
    .restart local v1    # "type":I
    goto :goto_0

    .line 171
    .end local v1    # "type":I
    :sswitch_12
    const-string v0, "album_artist"

    .line 172
    const v1, 0xffff

    .line 173
    .restart local v1    # "type":I
    goto :goto_0

    .line 176
    .end local v1    # "type":I
    :sswitch_13
    const v1, 0xffff

    .line 177
    .restart local v1    # "type":I
    goto :goto_0

    .line 179
    .end local v1    # "type":I
    :sswitch_14
    const-string v0, "composer"

    .line 180
    const v1, 0xffff

    .line 181
    .restart local v1    # "type":I
    goto :goto_0

    .line 183
    .end local v1    # "type":I
    :sswitch_15
    const-string v0, "description"

    .line 184
    const v1, 0xffff

    .line 185
    .restart local v1    # "type":I
    goto :goto_0

    .line 196
    :cond_0
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    const/4 v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    goto :goto_1

    .line 96
    :sswitch_data_0
    .sparse-switch
        0xdc01 -> :sswitch_2
        0xdc02 -> :sswitch_3
        0xdc03 -> :sswitch_4
        0xdc04 -> :sswitch_5
        0xdc07 -> :sswitch_6
        0xdc09 -> :sswitch_8
        0xdc0b -> :sswitch_b
        0xdc41 -> :sswitch_c
        0xdc44 -> :sswitch_7
        0xdc46 -> :sswitch_10
        0xdc48 -> :sswitch_15
        0xdc4e -> :sswitch_9
        0xdc89 -> :sswitch_d
        0xdc8b -> :sswitch_e
        0xdc8c -> :sswitch_13
        0xdc96 -> :sswitch_14
        0xdc99 -> :sswitch_a
        0xdc9a -> :sswitch_11
        0xdc9b -> :sswitch_12
        0xdce0 -> :sswitch_f
        0xde9b -> :sswitch_1
        0xdea1 -> :sswitch_0
    .end sparse-switch
.end method

.method private native format_date_time(J)Ljava/lang/String;
.end method

.method private static nameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 284
    const/4 v2, 0x0

    .line 285
    .local v2, "start":I
    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 286
    .local v1, "lastSlash":I
    if-ltz v1, :cond_0

    .line 287
    add-int/lit8 v2, v1, 0x1

    .line 289
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 290
    .local v0, "end":I
    sub-int v3, v0, v2

    const/16 v4, 0xff

    if-le v3, v4, :cond_1

    .line 291
    add-int/lit16 v0, v2, 0xff

    .line 293
    :cond_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private queryAudio(ILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # I
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 222
    const/4 v8, 0x0

    .line 224
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 227
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 235
    if-eqz v8, :cond_0

    .line 236
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    .line 230
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    if-eqz v8, :cond_0

    .line 236
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 232
    :catch_0
    move-exception v9

    .line 235
    .local v9, "e":Ljava/lang/Exception;
    if-eqz v8, :cond_2

    .line 236
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v10

    goto :goto_0

    .line 235
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 236
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private queryGenre(I)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # I

    .prologue
    const/4 v10, 0x0

    .line 242
    const/4 v8, 0x0

    .line 244
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/provider/MediaStore$Audio$Genres;->getContentUriForAudioId(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    .line 245
    .local v2, "uri":Landroid/net/Uri;
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "name"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 248
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 257
    if-eqz v8, :cond_0

    .line 258
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v0

    .line 251
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    if-eqz v8, :cond_0

    .line 258
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 253
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v9

    .line 254
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "MtpPropertyGroup"

    const-string/jumbo v1, "queryGenre exception"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 257
    if-eqz v8, :cond_2

    .line 258
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v10

    goto :goto_0

    .line 257
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 258
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private queryLong(ILjava/lang/String;)Ljava/lang/Long;
    .locals 10
    .param p1, "id"    # I
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 264
    const/4 v8, 0x0

    .line 267
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 270
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    new-instance v0, Ljava/lang/Long;

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    if-eqz v8, :cond_0

    .line 276
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 279
    :cond_0
    :goto_0
    return-object v0

    .line 275
    :cond_1
    if-eqz v8, :cond_2

    .line 276
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v0, v9

    .line 279
    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 275
    if-eqz v8, :cond_2

    .line 276
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 275
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 276
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private queryString(ILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # I
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 201
    const/4 v8, 0x0

    .line 204
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 207
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 215
    if-eqz v8, :cond_0

    .line 216
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    .line 210
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    if-eqz v8, :cond_0

    .line 216
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 212
    :catch_0
    move-exception v9

    .line 215
    .local v9, "e":Ljava/lang/Exception;
    if-eqz v8, :cond_2

    .line 216
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v10

    goto :goto_0

    .line 215
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 216
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method getPropertyList(III)Landroid/mtp/MtpPropertyList;
    .locals 32
    .param p1, "handle"    # I
    .param p2, "format"    # I
    .param p3, "depth"    # I

    .prologue
    .line 298
    const/4 v2, 0x1

    move/from16 v0, p3

    if-le v0, v2, :cond_1

    .line 301
    new-instance v8, Landroid/mtp/MtpPropertyList;

    const/4 v2, 0x0

    const v3, 0xa808

    invoke-direct {v8, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 462
    :cond_0
    :goto_0
    return-object v8

    .line 306
    :cond_1
    if-nez p2, :cond_5

    .line 307
    const/4 v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 309
    const/4 v6, 0x0

    .line 310
    .local v6, "where":Ljava/lang/String;
    const/4 v7, 0x0

    .line 334
    .local v7, "whereArgs":[Ljava/lang/String;
    :goto_1
    const/16 v20, 0x0

    .line 337
    .local v20, "c":Landroid/database/Cursor;
    if-gtz p3, :cond_2

    const/4 v2, -0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_8

    .line 338
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v20

    .line 339
    if-nez v20, :cond_8

    .line 340
    new-instance v8, Landroid/mtp/MtpPropertyList;

    const/4 v2, 0x0

    const/16 v3, 0x2009

    invoke-direct {v8, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    if-eqz v20, :cond_0

    .line 462
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 312
    .end local v6    # "where":Ljava/lang/String;
    .end local v7    # "whereArgs":[Ljava/lang/String;
    .end local v20    # "c":Landroid/database/Cursor;
    :cond_3
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    .line 313
    .restart local v7    # "whereArgs":[Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_4

    .line 314
    const-string/jumbo v6, "parent=?"

    .restart local v6    # "where":Ljava/lang/String;
    goto :goto_1

    .line 316
    .end local v6    # "where":Ljava/lang/String;
    :cond_4
    const-string v6, "_id=?"

    .restart local v6    # "where":Ljava/lang/String;
    goto :goto_1

    .line 320
    .end local v6    # "where":Ljava/lang/String;
    .end local v7    # "whereArgs":[Ljava/lang/String;
    :cond_5
    const/4 v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 322
    const-string v6, "format=?"

    .line 323
    .restart local v6    # "where":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    .restart local v7    # "whereArgs":[Ljava/lang/String;
    goto :goto_1

    .line 325
    .end local v6    # "where":Ljava/lang/String;
    .end local v7    # "whereArgs":[Ljava/lang/String;
    :cond_6
    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v2, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    .line 326
    .restart local v7    # "whereArgs":[Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_7

    .line 327
    const-string/jumbo v6, "parent=? AND format=?"

    .restart local v6    # "where":Ljava/lang/String;
    goto :goto_1

    .line 329
    .end local v6    # "where":Ljava/lang/String;
    :cond_7
    const-string v6, "_id=? AND format=?"

    .restart local v6    # "where":Ljava/lang/String;
    goto :goto_1

    .line 344
    .restart local v20    # "c":Landroid/database/Cursor;
    :cond_8
    if-nez v20, :cond_a

    const/16 v22, 0x1

    .line 345
    .local v22, "count":I
    :goto_2
    :try_start_1
    new-instance v8, Landroid/mtp/MtpPropertyList;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v2, v2

    mul-int v2, v2, v22

    const/16 v3, 0x2001

    invoke-direct {v8, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 349
    .local v8, "result":Landroid/mtp/MtpPropertyList;
    const/16 v27, 0x0

    .local v27, "objectIndex":I
    :goto_3
    move/from16 v0, v27

    move/from16 v1, v22

    if-ge v0, v1, :cond_14

    .line 350
    if-eqz v20, :cond_9

    .line 351
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    .line 352
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 p1, v0

    .line 356
    :cond_9
    const/16 v29, 0x0

    .local v29, "propertyIndex":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v2, v2

    move/from16 v0, v29

    if-ge v0, v2, :cond_13

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget-object v28, v2, v29

    .line 358
    .local v28, "property":Landroid/mtp/MtpPropertyGroup$Property;
    move-object/from16 v0, v28

    iget v10, v0, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    .line 359
    .local v10, "propertyCode":I
    move-object/from16 v0, v28

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    move/from16 v21, v0

    .line 362
    .local v21, "column":I
    sparse-switch v10, :sswitch_data_0

    .line 444
    move-object/from16 v0, v28

    iget v2, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    const v3, 0xffff

    if-ne v2, v3, :cond_11

    .line 445
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 356
    :goto_5
    add-int/lit8 v29, v29, 0x1

    goto :goto_4

    .line 344
    .end local v8    # "result":Landroid/mtp/MtpPropertyList;
    .end local v10    # "propertyCode":I
    .end local v21    # "column":I
    .end local v22    # "count":I
    .end local v27    # "objectIndex":I
    .end local v28    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .end local v29    # "propertyIndex":I
    :cond_a
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v22

    goto :goto_2

    .line 366
    .restart local v8    # "result":Landroid/mtp/MtpPropertyList;
    .restart local v10    # "propertyCode":I
    .restart local v21    # "column":I
    .restart local v22    # "count":I
    .restart local v27    # "objectIndex":I
    .restart local v28    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v29    # "propertyIndex":I
    :sswitch_0
    const/4 v11, 0x6

    const-wide/16 v12, 0x0

    move/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 458
    .end local v8    # "result":Landroid/mtp/MtpPropertyList;
    .end local v10    # "propertyCode":I
    .end local v21    # "column":I
    .end local v22    # "count":I
    .end local v27    # "objectIndex":I
    .end local v28    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .end local v29    # "propertyIndex":I
    :catch_0
    move-exception v24

    .line 459
    .local v24, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v8, Landroid/mtp/MtpPropertyList;

    const/4 v2, 0x0

    const/16 v3, 0x2002

    invoke-direct {v8, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 461
    if-eqz v20, :cond_0

    .line 462
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 369
    .end local v24    # "e":Landroid/os/RemoteException;
    .restart local v8    # "result":Landroid/mtp/MtpPropertyList;
    .restart local v10    # "propertyCode":I
    .restart local v21    # "column":I
    .restart local v22    # "count":I
    .restart local v27    # "objectIndex":I
    .restart local v28    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v29    # "propertyIndex":I
    :sswitch_1
    :try_start_3
    const-string v2, ""

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 461
    .end local v8    # "result":Landroid/mtp/MtpPropertyList;
    .end local v10    # "propertyCode":I
    .end local v21    # "column":I
    .end local v22    # "count":I
    .end local v27    # "objectIndex":I
    .end local v28    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .end local v29    # "propertyIndex":I
    :catchall_0
    move-exception v2

    if-eqz v20, :cond_b

    .line 462
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v2

    .line 374
    .restart local v8    # "result":Landroid/mtp/MtpPropertyList;
    .restart local v10    # "propertyCode":I
    .restart local v21    # "column":I
    .restart local v22    # "count":I
    .restart local v27    # "objectIndex":I
    .restart local v28    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v29    # "propertyIndex":I
    :sswitch_2
    const/4 v11, 0x4

    const-wide/16 v12, 0x0

    move/from16 v9, p1

    :try_start_4
    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_5

    .line 378
    :sswitch_3
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 379
    .local v30, "value":Ljava/lang/String;
    if-eqz v30, :cond_c

    .line 380
    invoke-static/range {v30 .. v30}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_5

    .line 382
    :cond_c
    const/16 v2, 0x2009

    invoke-virtual {v8, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto :goto_5

    .line 387
    .end local v30    # "value":Ljava/lang/String;
    :sswitch_4
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 389
    .local v26, "name":Ljava/lang/String;
    if-nez v26, :cond_d

    .line 390
    const-string/jumbo v2, "name"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 393
    :cond_d
    if-nez v26, :cond_e

    .line 394
    const-string v2, "_data"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 395
    if-eqz v26, :cond_e

    .line 396
    invoke-static/range {v26 .. v26}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 399
    :cond_e
    if-eqz v26, :cond_f

    .line 400
    move/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v8, v0, v10, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_5

    .line 402
    :cond_f
    const/16 v2, 0x2009

    invoke-virtual {v8, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto/16 :goto_5

    .line 408
    .end local v26    # "name":Ljava/lang/String;
    :sswitch_5
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 412
    :sswitch_6
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 413
    .local v31, "year":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0101T000000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 414
    .local v23, "dateTime":Ljava/lang/String;
    move/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v10, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 418
    .end local v23    # "dateTime":Ljava/lang/String;
    .end local v31    # "year":I
    :sswitch_7
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 419
    .local v12, "puid":J
    const/16 v2, 0x20

    shl-long/2addr v12, v2

    .line 420
    move/from16 v0, p1

    int-to-long v2, v0

    add-long/2addr v12, v2

    .line 421
    const/16 v11, 0xa

    move/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    .line 424
    .end local v12    # "puid":J
    :sswitch_8
    const/16 v17, 0x4

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    rem-int/lit16 v2, v2, 0x3e8

    int-to-long v0, v2

    move-wide/from16 v18, v0

    move-object v14, v8

    move/from16 v15, p1

    move/from16 v16, v10

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    .line 428
    :sswitch_9
    const-string v2, "artist"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 432
    :sswitch_a
    const-string v2, "album"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 436
    :sswitch_b
    invoke-direct/range {p0 .. p1}, Landroid/mtp/MtpPropertyGroup;->queryGenre(I)Ljava/lang/String;

    move-result-object v25

    .line 437
    .local v25, "genre":Ljava/lang/String;
    if-eqz v25, :cond_10

    .line 438
    move/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v10, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 440
    :cond_10
    const/16 v2, 0x2009

    invoke-virtual {v8, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto/16 :goto_5

    .line 446
    .end local v25    # "genre":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, v28

    iget v2, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    if-nez v2, :cond_12

    .line 447
    move-object/from16 v0, v28

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move/from16 v17, v0

    const-wide/16 v18, 0x0

    move-object v14, v8

    move/from16 v15, p1

    move/from16 v16, v10

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    .line 449
    :cond_12
    move-object/from16 v0, v28

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move/from16 v17, v0

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-object v14, v8

    move/from16 v15, p1

    move/from16 v16, v10

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_5

    .line 349
    .end local v10    # "propertyCode":I
    .end local v21    # "column":I
    .end local v28    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    :cond_13
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_3

    .line 461
    .end local v29    # "propertyIndex":I
    :cond_14
    if-eqz v20, :cond_0

    .line 462
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 362
    :sswitch_data_0
    .sparse-switch
        0xdc03 -> :sswitch_2
        0xdc07 -> :sswitch_3
        0xdc09 -> :sswitch_5
        0xdc41 -> :sswitch_7
        0xdc44 -> :sswitch_4
        0xdc46 -> :sswitch_9
        0xdc4e -> :sswitch_5
        0xdc8b -> :sswitch_8
        0xdc8c -> :sswitch_b
        0xdc99 -> :sswitch_6
        0xdc9a -> :sswitch_a
        0xde9b -> :sswitch_0
        0xdea1 -> :sswitch_1
    .end sparse-switch
.end method
