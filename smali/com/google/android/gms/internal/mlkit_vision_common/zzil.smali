.class public abstract Lcom/google/android/gms/internal/mlkit_vision_common/zzil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static parseAlgContext(Ljava/util/ArrayList;)Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;
    .locals 18

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v3, -0x1

    move-wide v5, v3

    move-wide v7, v5

    move-wide v9, v7

    move-wide v11, v9

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;

    if-eqz v13, :cond_0

    iget-object v14, v13, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->mime:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v14, 0x0

    :goto_1
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    :cond_1
    :goto_2
    move-wide/from16 v16, v11

    goto/16 :goto_4

    :sswitch_0
    const-string v15, "makernote"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    goto :goto_2

    :cond_2
    iget-wide v7, v13, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->fid:J

    goto :goto_0

    :sswitch_1
    const-string/jumbo v15, "thumb"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    goto :goto_2

    :cond_3
    iget-wide v3, v13, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->fid:J

    goto :goto_0

    :sswitch_2
    const-string v15, "json"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    goto :goto_2

    :cond_4
    iget-object v14, v13, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->category:Ljava/lang/String;

    move-wide/from16 v16, v11

    iget-wide v11, v13, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->fid:J

    const-string v15, "depthAux"

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    goto :goto_0

    :cond_5
    iget-object v13, v13, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->category:Ljava/lang/String;

    const-string v14, "algoAuxData"

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :sswitch_3
    move-wide/from16 v16, v11

    const-string v11, "exif"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    goto :goto_4

    :cond_6
    iget-wide v5, v13, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->fid:J

    :cond_7
    :goto_3
    move-wide/from16 v11, v16

    goto :goto_0

    :sswitch_4
    move-wide/from16 v16, v11

    const-string v11, "app6"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    goto :goto_4

    :cond_8
    iget-wide v9, v13, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->fid:J

    goto :goto_3

    :goto_4
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    move-wide/from16 v16, v11

    new-instance v2, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-wide v3, v2, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->thumbFid:J

    iput-wide v5, v2, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->exifFid:J

    iput-wide v7, v2, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->makerNoteFid:J

    iput-wide v9, v2, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->app6Fid:J

    move-wide/from16 v3, v16

    iput-wide v3, v2, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->auxliaryDataFid:J

    iput-object v1, v2, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->algoAuxDataFids:Ljava/util/ArrayList;

    iput-object v0, v2, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->jpegFids:Ljava/util/ArrayList;

    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x2dca35 -> :sswitch_4
        0x2fb910 -> :sswitch_3
        0x31ece8 -> :sswitch_2
        0x693b1d6 -> :sswitch_1
        0x4c83a636 -> :sswitch_0
    .end sparse-switch
.end method

.method public static parseJobContext(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 18

    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "jpegImageContext"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "slot"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    const-string v9, "jpegFids"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_0

    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    new-instance v14, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;

    const-string v15, "category"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v3, "getString(...)"

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v0

    const-string v0, "mime"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "fid"

    move/from16 v17, v2

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    iput-object v15, v14, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->category:Ljava/lang/String;

    iput-object v0, v14, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->mime:Ljava/lang/String;

    iput-wide v2, v14, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->fid:J

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v16

    move/from16 v2, v17

    goto :goto_1

    :cond_0
    move-object/from16 v16, v0

    move/from16 v17, v2

    new-instance v0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v6, "intanceId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    const-string v6, "intanceTag"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, v0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->slot:J

    iput-wide v11, v0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->instanceId:J

    iput-wide v5, v0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->instanceTag:J

    iput-object v10, v0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->jpegFids:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v16

    move/from16 v2, v17

    goto/16 :goto_0

    :cond_1
    return-object v1
.end method
