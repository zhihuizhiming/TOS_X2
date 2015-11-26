.class public Landroid/view/PtfViewDebug;
.super Landroid/view/ViewDebug;
.source "PtfViewDebug.java"


# static fields
.field private static final LOCAL_LOGV:Z = false

.field private static final PTF_COMMAND_DUMP:Ljava/lang/String; = "PTF_DUMP"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/view/ViewDebug;-><init>()V

    return-void
.end method

.method private static configureEscapeSequence(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 692
    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 695
    const-string v0, ","

    const-string v1, "\\,"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 696
    const-string v0, "\n"

    const-string v1, "\\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 697
    return-object p0
.end method

.method static dispatchCommand(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;
    .param p3, "clientStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    const-string v0, "PTF_DUMP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    .line 60
    invoke-static {p0, p3}, Landroid/view/PtfViewDebug;->dump(Landroid/view/View;Ljava/io/OutputStream;)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/view/ViewDebug;->dispatchCommand(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method private static dump(Landroid/view/View;Ljava/io/OutputStream;)V
    .locals 9
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    const/4 v4, 0x0

    .line 79
    .local v4, "out":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const v8, 0x8000

    invoke-direct {v5, v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .local v5, "out":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    .line 82
    .local v6, "view":Landroid/view/View;
    instance-of v7, v6, Landroid/view/ViewGroup;

    if-eqz v7, :cond_2

    .line 83
    move-object v0, v6

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 84
    .local v2, "group":Landroid/view/ViewGroup;
    const/4 v7, 0x0

    invoke-static {v2, v5, v7}, Landroid/view/PtfViewDebug;->dumpViewHierarchyWithProperties(Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    .line 94
    .end local v2    # "group":Landroid/view/ViewGroup;
    .end local v6    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    const-string v7, "DONE."

    invoke-virtual {v5, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    if-eqz v5, :cond_6

    .line 123
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    move-object v4, v5

    .line 126
    .end local v5    # "out":Ljava/io/BufferedWriter;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :cond_1
    :goto_1
    return-void

    .line 87
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v5    # "out":Ljava/io/BufferedWriter;
    .restart local v6    # "view":Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    :try_start_2
    invoke-static {v6, v5, v7}, Landroid/view/PtfViewDebug;->dumpViewWithProperties(Landroid/view/View;Ljava/io/BufferedWriter;I)Z

    .line 89
    instance-of v7, v6, Lcom/motorola/automation/WidgetDebugInterface;

    if-eqz v7, :cond_0

    .line 91
    check-cast v6, Lcom/motorola/automation/WidgetDebugInterface;

    .end local v6    # "view":Landroid/view/View;
    const/4 v7, 0x0

    invoke-static {v6, v5, v7}, Landroid/view/PtfViewDebug;->dumpCompositeViewWithProperties(Lcom/motorola/automation/WidgetDebugInterface;Ljava/io/BufferedWriter;I)Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 97
    :catch_0
    move-exception v3

    move-object v4, v5

    .line 100
    .end local v5    # "out":Ljava/io/BufferedWriter;
    .local v3, "iae":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :goto_2
    if-eqz v4, :cond_3

    .line 101
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 102
    const-string v7, "ERROR 0A"

    invoke-virtual {v4, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 122
    :cond_3
    :goto_3
    if-eqz v4, :cond_1

    .line 123
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    goto :goto_1

    .line 109
    .end local v3    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_4
    const-string v7, "View"

    const-string v8, "Unable to dump PTF hierarchy tree."

    invoke-static {v7, v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 112
    if-eqz v4, :cond_4

    .line 113
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 114
    const-string v7, "ERROR 00"

    invoke-virtual {v4, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 122
    :cond_4
    :goto_5
    if-eqz v4, :cond_1

    .line 123
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    goto :goto_1

    .line 122
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v4, :cond_5

    .line 123
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    :cond_5
    throw v7

    .line 122
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v5    # "out":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "out":Ljava/io/BufferedWriter;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    goto :goto_6

    .line 118
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    goto :goto_5

    .line 109
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v5    # "out":Ljava/io/BufferedWriter;
    :catch_3
    move-exception v1

    move-object v4, v5

    .end local v5    # "out":Ljava/io/BufferedWriter;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    goto :goto_4

    .line 106
    .restart local v3    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v7

    goto :goto_3

    .line 97
    .end local v3    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v3

    goto :goto_2

    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v5    # "out":Ljava/io/BufferedWriter;
    :cond_6
    move-object v4, v5

    .end local v5    # "out":Ljava/io/BufferedWriter;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    goto :goto_1
.end method

.method private static dumpCompositeViewWithProperties(Lcom/motorola/automation/WidgetDebugInterface;Ljava/io/BufferedWriter;I)Z
    .locals 4
    .param p0, "view"    # Lcom/motorola/automation/WidgetDebugInterface;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .param p2, "level"    # I

    .prologue
    .line 508
    invoke-interface {p0}, Lcom/motorola/automation/WidgetDebugInterface;->dumpCompositeView()Ljava/util/ArrayList;

    move-result-object v1

    .line 510
    .local v1, "nodeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/automation/WidgetDebugNode;>;"
    if-nez v1, :cond_0

    .line 512
    const/4 v2, 0x0

    .line 518
    :goto_0
    return v2

    .line 515
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 516
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/automation/WidgetDebugNode;

    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, p1, v3}, Landroid/view/PtfViewDebug;->dumpWidgetDebugNode(Lcom/motorola/automation/WidgetDebugNode;Ljava/io/BufferedWriter;I)Z

    .line 515
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 518
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static dumpViewHierarchyWithProperties(Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V
    .locals 5
    .param p0, "group"    # Landroid/view/ViewGroup;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .param p2, "level"    # I

    .prologue
    .line 137
    invoke-static {p0, p1, p2}, Landroid/view/PtfViewDebug;->dumpViewWithProperties(Landroid/view/View;Ljava/io/BufferedWriter;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 169
    .end local p0    # "group":Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    return-void

    .line 144
    .restart local p0    # "group":Landroid/view/ViewGroup;
    :cond_1
    instance-of v3, p0, Lcom/motorola/automation/WidgetDebugInterface;

    if-eqz v3, :cond_2

    .line 146
    check-cast p0, Lcom/motorola/automation/WidgetDebugInterface;

    .end local p0    # "group":Landroid/view/ViewGroup;
    invoke-static {p0, p1, p2}, Landroid/view/PtfViewDebug;->dumpCompositeViewWithProperties(Lcom/motorola/automation/WidgetDebugInterface;Ljava/io/BufferedWriter;I)Z

    goto :goto_0

    .line 150
    .restart local p0    # "group":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 151
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 152
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 153
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_3

    .line 155
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Null value for Child Views. Inconsistent capture"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 158
    :cond_3
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_5

    .line 159
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "view":Landroid/view/View;
    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, p1, v3}, Landroid/view/PtfViewDebug;->dumpViewHierarchyWithProperties(Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    .line 151
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 161
    .restart local v2    # "view":Landroid/view/View;
    :cond_5
    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, p1, v3}, Landroid/view/PtfViewDebug;->dumpViewWithProperties(Landroid/view/View;Ljava/io/BufferedWriter;I)Z

    .line 163
    instance-of v3, v2, Lcom/motorola/automation/WidgetDebugInterface;

    if-eqz v3, :cond_4

    .line 165
    check-cast v2, Lcom/motorola/automation/WidgetDebugInterface;

    .end local v2    # "view":Landroid/view/View;
    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, p1, v3}, Landroid/view/PtfViewDebug;->dumpCompositeViewWithProperties(Lcom/motorola/automation/WidgetDebugInterface;Ljava/io/BufferedWriter;I)Z

    goto :goto_2
.end method

.method private static dumpViewWithProperties(Landroid/view/View;Ljava/io/BufferedWriter;I)Z
    .locals 22
    .param p0, "view"    # Landroid/view/View;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .param p2, "level"    # I

    .prologue
    .line 184
    if-nez p0, :cond_0

    .line 185
    const/16 v19, 0x0

    .line 331
    :goto_0
    return v19

    .line 188
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVisibility()I

    move-result v19

    if-eqz v19, :cond_1

    .line 189
    const/16 v19, 0x0

    goto :goto_0

    .line 192
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    move/from16 v0, p2

    if-ge v4, v0, :cond_2

    .line 193
    const/16 v19, 0x20

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(I)V

    .line 192
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 195
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 196
    const/16 v19, 0x20

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(I)V

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v2, "dumpStr":Ljava/lang/StringBuilder;
    const-string v6, "NO_ID"

    .line 201
    .local v6, "idStr":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v5

    .line 204
    .local v5, "id":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v12

    .line 205
    .local v12, "resources":Landroid/content/res/Resources;
    if-ltz v5, :cond_3

    .line 207
    :try_start_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x2f

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v6

    .line 215
    :cond_3
    :goto_2
    :try_start_2
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v8, v0, [I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 220
    .local v8, "position":[I
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/View;->getLocationOnScreen([I)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 236
    :cond_4
    :goto_3
    :try_start_4
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget v20, v8, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget v20, v8, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasFocus()Z

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isClickable()Z

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isFocused()Z

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isSelected()Z

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/AbsListView;

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 250
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    check-cast v0, Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/AbsListView;->getCount()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    check-cast v0, Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :goto_4
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 261
    move-object/from16 v0, p0

    check-cast v0, Landroid/widget/Checkable;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/widget/Checkable;->isChecked()Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_5
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 267
    move-object/from16 v0, p0

    check-cast v0, Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 269
    .local v15, "text":Ljava/lang/String;
    invoke-static {v15}, Landroid/view/PtfViewDebug;->configureEscapeSequence(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 270
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .end local v15    # "text":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/ProgressBar;

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .line 275
    move-object/from16 v0, p0

    check-cast v0, Landroid/widget/ProgressBar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ProgressBar;->getMax()I

    move-result v7

    .line 276
    .local v7, "max":I
    move-object/from16 v0, p0

    check-cast v0, Landroid/widget/ProgressBar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v7

    move/from16 v20, v0

    div-float v9, v19, v20

    .line 277
    .local v9, "progress1":F
    move-object/from16 v0, p0

    check-cast v0, Landroid/widget/ProgressBar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v7

    move/from16 v20, v0

    div-float v10, v19, v20

    .line 279
    .local v10, "progress2":F
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/high16 v20, 0x42c80000    # 100.0f

    mul-float v20, v20, v9

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/high16 v20, 0x42c80000    # 100.0f

    mul-float v20, v20, v10

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .end local v7    # "max":I
    .end local v9    # "progress1":F
    .end local v10    # "progress2":F
    :goto_5
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 289
    const/4 v11, 0x0

    .line 290
    .local v11, "resString":Ljava/lang/String;
    const/4 v13, 0x0

    .line 299
    .local v13, "tempDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    check-cast v0, Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 300
    if-eqz v13, :cond_7

    .line 301
    invoke-static {v13}, Landroid/view/PtfViewDebug;->getDrawableImageSource(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;

    move-result-object v11

    .line 304
    :cond_7
    if-eqz v11, :cond_8

    .line 305
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .end local v11    # "resString":Ljava/lang/String;
    .end local v13    # "tempDrawable":Landroid/graphics/drawable/Drawable;
    :cond_8
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 326
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 331
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 210
    .end local v8    # "position":[I
    :catch_0
    move-exception v3

    .line 211
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v6, "UNKNOWN"

    goto/16 :goto_2

    .line 221
    .end local v3    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v8    # "position":[I
    :catch_1
    move-exception v3

    .line 223
    .local v3, "e":Ljava/lang/NullPointerException;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/View;->getLocationInWindow([I)V

    .line 224
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    .line 225
    .local v18, "viewParent":Landroid/view/ViewParent;
    :goto_6
    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/view/View;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 226
    move-object/from16 v0, v18

    check-cast v0, Landroid/view/View;

    move-object/from16 v17, v0

    .line 227
    .local v17, "viewP":Landroid/view/View;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    .line 228
    const/16 v19, 0x0

    aget v20, v8, v19

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    move/from16 v21, v0

    add-int v20, v20, v21

    aput v20, v8, v19

    .line 229
    const/16 v19, 0x1

    aget v20, v8, v19

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    move/from16 v21, v0

    add-int v20, v20, v21

    aput v20, v8, v19
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    .line 327
    .end local v2    # "dumpStr":Ljava/lang/StringBuilder;
    .end local v3    # "e":Ljava/lang/NullPointerException;
    .end local v4    # "i":I
    .end local v5    # "id":I
    .end local v6    # "idStr":Ljava/lang/String;
    .end local v8    # "position":[I
    .end local v12    # "resources":Landroid/content/res/Resources;
    .end local v17    # "viewP":Landroid/view/View;
    .end local v18    # "viewParent":Landroid/view/ViewParent;
    :catch_2
    move-exception v3

    .line 328
    .local v3, "e":Ljava/io/IOException;
    const-string v19, "View"

    const-string v20, "Error while dumping PTF hierarchy tree."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 232
    .restart local v2    # "dumpStr":Ljava/lang/StringBuilder;
    .local v3, "e":Ljava/lang/NullPointerException;
    .restart local v4    # "i":I
    .restart local v5    # "id":I
    .restart local v6    # "idStr":Ljava/lang/String;
    .restart local v8    # "position":[I
    .restart local v12    # "resources":Landroid/content/res/Resources;
    .restart local v17    # "viewP":Landroid/view/View;
    .restart local v18    # "viewParent":Landroid/view/ViewParent;
    :cond_9
    :try_start_5
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    move-object/from16 v18, v0

    .line 233
    goto :goto_6

    .line 256
    .end local v3    # "e":Ljava/lang/NullPointerException;
    .end local v17    # "viewP":Landroid/view/View;
    .end local v18    # "viewParent":Landroid/view/ViewParent;
    :cond_a
    const-string v19, ",,"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 284
    :cond_b
    const-string v19, ",,"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 306
    :cond_c
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 307
    move-object/from16 v0, p0

    check-cast v0, Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 308
    .local v14, "tempDrawables":[Landroid/graphics/drawable/Drawable;
    if-eqz v14, :cond_8

    .line 310
    const/4 v4, 0x0

    :goto_7
    array-length v0, v14

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_8

    .line 312
    aget-object v13, v14, v4

    .line 313
    .restart local v13    # "tempDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v13, :cond_e

    const-string v16, ""

    .line 314
    .local v16, "tmpResString":Ljava/lang/String;
    :goto_8
    if-eqz v4, :cond_d

    .line 316
    const-string v19, ";"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :cond_d
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 313
    .end local v16    # "tmpResString":Ljava/lang/String;
    :cond_e
    invoke-static {v13}, Landroid/view/PtfViewDebug;->getDrawableImageSource(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v16

    goto :goto_8
.end method

.method private static dumpWidgetDebugNode(Lcom/motorola/automation/WidgetDebugNode;Ljava/io/BufferedWriter;I)Z
    .locals 7
    .param p0, "entry"    # Lcom/motorola/automation/WidgetDebugNode;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .param p2, "level"    # I

    .prologue
    const/4 v4, 0x0

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 526
    .local v0, "dumpStr":Ljava/lang/StringBuilder;
    if-nez p0, :cond_0

    .line 653
    :goto_0
    return v4

    .line 531
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getNodeLevel()I

    move-result v5

    add-int v3, p2, v5

    .line 532
    .local v3, "levelAdj":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 533
    const/16 v5, 0x20

    invoke-virtual {p1, v5}, Ljava/io/BufferedWriter;->write(I)V

    .line 532
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 535
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getClassName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 536
    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 540
    :goto_2
    const/16 v5, 0x20

    invoke-virtual {p1, v5}, Ljava/io/BufferedWriter;->write(I)V

    .line 542
    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 543
    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    :goto_3
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getXPosition()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 550
    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getXPosition()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    :goto_4
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getYPosition()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 557
    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getYPosition()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    :goto_5
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getViewWidth()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 564
    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getViewWidth()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    :goto_6
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getViewHeight()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 571
    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getViewHeight()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    :goto_7
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getHasFocus()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 578
    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getHasFocus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    :goto_8
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getIsClickable()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 585
    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getIsClickable()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    :goto_9
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getIsEnabled()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_11

    .line 592
    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getIsEnabled()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    :goto_a
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getIsFocused()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 599
    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getIsFocused()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    :goto_b
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getIsSelected()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 606
    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getIsSelected()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    :goto_c
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    const-string v5, "LIST_COUNT"

    invoke-virtual {p0, v5}, Lcom/motorola/automation/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 613
    const-string v5, "LIST_COUNT"

    invoke-virtual {p0, v5}, Lcom/motorola/automation/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    :cond_2
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    const-string v5, "SELECTED_ITEM_POSITION"

    invoke-virtual {p0, v5}, Lcom/motorola/automation/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 617
    const-string v5, "SELECTED_ITEM_POSITION"

    invoke-virtual {p0, v5}, Lcom/motorola/automation/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    :cond_3
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    const-string v5, "IS_CHECKED"

    invoke-virtual {p0, v5}, Lcom/motorola/automation/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 621
    const-string v5, "IS_CHECKED"

    invoke-virtual {p0, v5}, Lcom/motorola/automation/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    :cond_4
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 626
    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    :cond_5
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    const-string v5, "PRIMARY_PROGRESS"

    invoke-virtual {p0, v5}, Lcom/motorola/automation/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 630
    const-string v5, "PRIMARY_PROGRESS"

    invoke-virtual {p0, v5}, Lcom/motorola/automation/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    :cond_6
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    const-string v5, "SECONDARY_PROGRESS"

    invoke-virtual {p0, v5}, Lcom/motorola/automation/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 634
    const-string v5, "SECONDARY_PROGRESS"

    invoke-virtual {p0, v5}, Lcom/motorola/automation/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    :cond_7
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getImage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 639
    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getImage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    :cond_8
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getHashCode()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 643
    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getHashCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    :goto_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 653
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 538
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 649
    .end local v1    # "i":I
    .end local v3    # "levelAdj":I
    :catch_0
    move-exception v2

    .line 650
    .local v2, "ioe":Ljava/io/IOException;
    const-string v5, "View"

    const-string v6, "Error unable to dump view Hierarchy"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 545
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v1    # "i":I
    .restart local v3    # "levelAdj":I
    :cond_a
    :try_start_1
    const-string v5, "NO_ID"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 552
    :cond_b
    const-string v5, "-1"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 559
    :cond_c
    const-string v5, "-1"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 566
    :cond_d
    const-string v5, "-1"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 573
    :cond_e
    const-string v5, "-1"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 580
    :cond_f
    const-string v5, "false"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 587
    :cond_10
    const-string v5, "false"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 594
    :cond_11
    const-string v5, "false"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 601
    :cond_12
    const-string v5, "false"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 608
    :cond_13
    const-string v5, "false"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 645
    :cond_14
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_d
.end method

.method public static generateHierarchyFromView(Landroid/view/View;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/automation/WidgetDebugNode;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 341
    const/4 v0, 0x0

    .line 343
    .local v0, "toReturn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/automation/WidgetDebugNode;>;"
    if-nez p0, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-object v1

    .line 346
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "toReturn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/automation/WidgetDebugNode;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .restart local v0    # "toReturn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/automation/WidgetDebugNode;>;"
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/PtfViewDebug;->hierarchyGeneratorHelper(Landroid/view/View;Ljava/util/ArrayList;I)V

    move-object v1, v0

    .line 351
    goto :goto_0
.end method

.method private static generateNodeFromView(Landroid/view/View;I)Lcom/motorola/automation/WidgetDebugNode;
    .locals 26
    .param p0, "view"    # Landroid/view/View;
    .param p1, "level"    # I

    .prologue
    .line 381
    const/16 v20, 0x0

    .line 383
    .local v20, "toReturn":Lcom/motorola/automation/WidgetDebugNode;
    if-nez p0, :cond_0

    .line 384
    const/16 v23, 0x0

    .line 501
    :goto_0
    return-object v23

    .line 386
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVisibility()I

    move-result v23

    if-eqz v23, :cond_1

    .line 387
    const/16 v23, 0x0

    goto :goto_0

    .line 390
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 393
    .local v2, "className":Ljava/lang/String;
    const-string v6, "NO_ID"

    .line 394
    .local v6, "idStr":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v5

    .line 396
    .local v5, "id":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v23

    if-eqz v23, :cond_2

    .line 397
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 398
    .local v14, "resources":Landroid/content/res/Resources;
    if-ltz v5, :cond_2

    .line 400
    :try_start_0
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x2f

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v14, v5}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 409
    .end local v14    # "resources":Landroid/content/res/Resources;
    :cond_2
    :goto_1
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v10, v0, [I

    .line 411
    .local v10, "position":[I
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationOnScreen([I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 427
    :cond_3
    :goto_2
    new-instance v20, Lcom/motorola/automation/WidgetDebugNode;

    .end local v20    # "toReturn":Lcom/motorola/automation/WidgetDebugNode;
    invoke-direct/range {v20 .. v20}, Lcom/motorola/automation/WidgetDebugNode;-><init>()V

    .line 429
    .restart local v20    # "toReturn":Lcom/motorola/automation/WidgetDebugNode;
    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/motorola/automation/WidgetDebugNode;->setNodeLevel(I)Z

    .line 430
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/motorola/automation/WidgetDebugNode;->setClassName(Ljava/lang/String;)Z

    .line 431
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/motorola/automation/WidgetDebugNode;->setUniqueIdentifier(Ljava/lang/String;)Z

    .line 433
    const/16 v23, 0x0

    aget v23, v10, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/automation/WidgetDebugNode;->setXPosition(Ljava/lang/String;)Z

    .line 434
    const/16 v23, 0x1

    aget v23, v10, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/automation/WidgetDebugNode;->setYPosition(Ljava/lang/String;)Z

    .line 435
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/automation/WidgetDebugNode;->setViewWidth(Ljava/lang/String;)Z

    .line 436
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/automation/WidgetDebugNode;->setViewHeight(Ljava/lang/String;)Z

    .line 438
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasFocus()Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/automation/WidgetDebugNode;->setHasFocus(Ljava/lang/String;)Z

    .line 439
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isClickable()Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/automation/WidgetDebugNode;->setIsClickable(Ljava/lang/String;)Z

    .line 440
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/automation/WidgetDebugNode;->setIsEnabled(Ljava/lang/String;)Z

    .line 441
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isFocused()Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/automation/WidgetDebugNode;->setIsFocused(Ljava/lang/String;)Z

    .line 442
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isSelected()Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/automation/WidgetDebugNode;->setIsSelected(Ljava/lang/String;)Z

    .line 444
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/AbsListView;

    move/from16 v23, v0

    if-eqz v23, :cond_4

    move-object/from16 v23, p0

    .line 445
    check-cast v23, Landroid/widget/AbsListView;

    invoke-virtual/range {v23 .. v23}, Landroid/widget/AbsListView;->getCount()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "listCount":Ljava/lang/String;
    move-object/from16 v23, p0

    .line 446
    check-cast v23, Landroid/widget/AbsListView;

    invoke-virtual/range {v23 .. v23}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 448
    .local v15, "selectedItemPosition":Ljava/lang/String;
    const-string v23, "LIST_COUNT"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v8}, Lcom/motorola/automation/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    .line 449
    const-string v23, "SELECTED_ITEM_POSITION"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Lcom/motorola/automation/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    .line 452
    .end local v8    # "listCount":Ljava/lang/String;
    .end local v15    # "selectedItemPosition":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v23, v0

    if-eqz v23, :cond_5

    move-object/from16 v23, p0

    .line 453
    check-cast v23, Landroid/widget/Checkable;

    invoke-interface/range {v23 .. v23}, Landroid/widget/Checkable;->isChecked()Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    .line 454
    .local v7, "isChecked":Ljava/lang/String;
    const-string v23, "IS_CHECKED"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v7}, Lcom/motorola/automation/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    .line 457
    .end local v7    # "isChecked":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v23, v0

    if-eqz v23, :cond_6

    move-object/from16 v23, p0

    .line 458
    check-cast v23, Landroid/widget/TextView;

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 459
    .local v19, "text":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/view/PtfViewDebug;->configureEscapeSequence(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 460
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/motorola/automation/WidgetDebugNode;->setText(Ljava/lang/String;)Z

    .line 463
    .end local v19    # "text":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/ProgressBar;

    move/from16 v23, v0

    if-eqz v23, :cond_7

    move-object/from16 v23, p0

    .line 464
    check-cast v23, Landroid/widget/ProgressBar;

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ProgressBar;->getMax()I

    move-result v9

    .local v9, "max":I
    move-object/from16 v23, p0

    .line 465
    check-cast v23, Landroid/widget/ProgressBar;

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v9

    move/from16 v24, v0

    div-float v23, v23, v24

    const/high16 v24, 0x42c80000    # 100.0f

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .local v11, "progress1":Ljava/lang/String;
    move-object/from16 v23, p0

    .line 466
    check-cast v23, Landroid/widget/ProgressBar;

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v9

    move/from16 v24, v0

    div-float v23, v23, v24

    const/high16 v24, 0x42c80000    # 100.0f

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 468
    .local v12, "progress2":Ljava/lang/String;
    const-string v23, "PRIMARY_PROGRESS"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Lcom/motorola/automation/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    .line 469
    const-string v23, "SECONDARY_PROGRESS"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v12}, Lcom/motorola/automation/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    .line 472
    .end local v9    # "max":I
    .end local v11    # "progress1":Ljava/lang/String;
    .end local v12    # "progress2":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v23, v0

    if-eqz v23, :cond_b

    .line 473
    const/4 v13, 0x0

    .line 474
    .local v13, "resString":Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, "tempDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v23, p0

    .line 476
    check-cast v23, Landroid/widget/ImageView;

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 477
    if-eqz v16, :cond_8

    .line 478
    invoke-static/range {v16 .. v16}, Landroid/view/PtfViewDebug;->getDrawableImageSource(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;

    move-result-object v13

    .line 480
    :cond_8
    if-eqz v13, :cond_9

    .line 481
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/motorola/automation/WidgetDebugNode;->setImage(Ljava/lang/String;)Z

    .line 500
    .end local v13    # "resString":Ljava/lang/String;
    .end local v16    # "tempDrawable":Landroid/graphics/drawable/Drawable;
    :cond_9
    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/automation/WidgetDebugNode;->setHashCode(Ljava/lang/String;)Z

    move-object/from16 v23, v20

    .line 501
    goto/16 :goto_0

    .line 402
    .end local v10    # "position":[I
    .restart local v14    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v3

    .line 403
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v6, "UNKNOWN"

    goto/16 :goto_1

    .line 412
    .end local v3    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v14    # "resources":Landroid/content/res/Resources;
    .restart local v10    # "position":[I
    :catch_1
    move-exception v3

    .line 414
    .local v3, "e":Ljava/lang/NullPointerException;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 415
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    .line 416
    .local v22, "viewParent":Landroid/view/ViewParent;
    :goto_4
    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/view/View;

    move/from16 v23, v0

    if-eqz v23, :cond_3

    move-object/from16 v21, v22

    .line 417
    check-cast v21, Landroid/view/View;

    .line 418
    .local v21, "viewP":Landroid/view/View;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v23, v0

    if-eqz v23, :cond_a

    .line 419
    const/16 v23, 0x0

    aget v24, v10, v23

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    move/from16 v25, v0

    add-int v24, v24, v25

    aput v24, v10, v23

    .line 420
    const/16 v23, 0x1

    aget v24, v10, v23

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    move/from16 v25, v0

    add-int v24, v24, v25

    aput v24, v10, v23

    goto/16 :goto_2

    .line 423
    :cond_a
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    move-object/from16 v22, v0

    .line 424
    goto :goto_4

    .line 482
    .end local v3    # "e":Ljava/lang/NullPointerException;
    .end local v21    # "viewP":Landroid/view/View;
    .end local v22    # "viewParent":Landroid/view/ViewParent;
    :cond_b
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v23, v0

    if-eqz v23, :cond_9

    move-object/from16 v23, p0

    .line 483
    check-cast v23, Landroid/widget/TextView;

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 484
    .local v17, "tempDrawables":[Landroid/graphics/drawable/Drawable;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 486
    .local v13, "resString":Ljava/lang/StringBuilder;
    if-eqz v17, :cond_e

    .line 487
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v4, v0, :cond_e

    .line 488
    aget-object v16, v17, v4

    .line 489
    .restart local v16    # "tempDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v16, :cond_d

    const-string v18, ""

    .line 490
    .local v18, "tempResString":Ljava/lang/String;
    :goto_6
    if-lez v4, :cond_c

    .line 491
    const-string v23, ";"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    :cond_c
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 489
    .end local v18    # "tempResString":Ljava/lang/String;
    :cond_d
    invoke-static/range {v16 .. v16}, Landroid/view/PtfViewDebug;->getDrawableImageSource(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;

    move-result-object v18

    goto :goto_6

    .line 496
    .end local v4    # "i":I
    .end local v16    # "tempDrawable":Landroid/graphics/drawable/Drawable;
    :cond_e
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v23

    if-ltz v23, :cond_9

    .line 497
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/automation/WidgetDebugNode;->setImage(Ljava/lang/String;)Z

    goto/16 :goto_3
.end method

.method private static getDrawableImageSource(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;
    .locals 3
    .param p0, "image"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 657
    const/4 v1, 0x0

    .line 658
    .local v1, "tempDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 671
    .local v0, "imgSource":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 672
    if-eqz v1, :cond_0

    .line 673
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 674
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "tempDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getImageSourceName()Ljava/lang/String;

    move-result-object v0

    .line 680
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .end local v0    # "imgSource":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 675
    .restart local v0    # "imgSource":Ljava/lang/String;
    .restart local v1    # "tempDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    instance-of v2, v1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v2, :cond_0

    .line 676
    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    .end local v1    # "tempDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/NinePatchDrawable;->getImageSourceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 680
    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method private static hierarchyGeneratorHelper(Landroid/view/View;Ljava/util/ArrayList;I)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/automation/WidgetDebugNode;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 357
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/automation/WidgetDebugNode;>;"
    const/4 v3, 0x0

    .line 358
    .local v3, "temp":Lcom/motorola/automation/WidgetDebugNode;
    invoke-static {p0, p2}, Landroid/view/PtfViewDebug;->generateNodeFromView(Landroid/view/View;I)Lcom/motorola/automation/WidgetDebugNode;

    move-result-object v3

    if-nez v3, :cond_1

    .line 378
    :cond_0
    return-void

    .line 361
    :cond_1
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    instance-of v5, p0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    move-object v1, p0

    .line 365
    check-cast v1, Landroid/view/ViewGroup;

    .line 366
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 368
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 369
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 370
    .local v4, "viewChild":Landroid/view/View;
    if-nez v4, :cond_2

    .line 372
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Null value for Child Views. Inconsistent capture."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 375
    :cond_2
    add-int/lit8 v5, p2, 0x1

    invoke-static {v4, p1, v5}, Landroid/view/PtfViewDebug;->hierarchyGeneratorHelper(Landroid/view/View;Ljava/util/ArrayList;I)V

    .line 368
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
