.class Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CapturedMediaDataTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CapturedMediaDataTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter;"
    }
.end annotation


# instance fields
.field public final mGson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CapturedMediaDataTypeAdapter;->mGson:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public final read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p1

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->peek()I

    move-result v1

    invoke-static {v1}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v1, v5, :cond_1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    return-object v3

    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expecting object: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/google/gson/stream/JsonReader;ZLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    sget-object v6, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->UNKNOWN:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    const-wide/16 v7, -0x1

    move-object v9, v3

    move v11, v4

    move v12, v11

    move v13, v12

    move-object v10, v6

    move-wide v14, v7

    move-object v6, v9

    :goto_0
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v17

    const/16 v18, -0x1

    sparse-switch v17, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "dat_siz"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v18, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "byt_buf_url"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/16 v18, 0x7

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "raw_dat"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/16 v18, 0x6

    goto :goto_1

    :sswitch_3
    const-string v4, "cap_rec"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const/16 v18, 0x5

    goto :goto_1

    :sswitch_4
    const-string v4, "cap_log"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    const/16 v18, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v4, "snap_typ"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    const/16 v18, 0x3

    goto :goto_1

    :sswitch_6
    const-string/jumbo v4, "reproc_typ"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    move/from16 v18, v5

    goto :goto_1

    :sswitch_7
    const-string v4, "mp_video_path"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_1

    :cond_9
    const/16 v18, 0x1

    goto :goto_1

    :sswitch_8
    const-string v4, "mp_video_duration"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_1

    :cond_a
    const/16 v18, 0x0

    :goto_1
    packed-switch v18, :pswitch_data_0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->peek()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->stringValueOf$2(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unknown field name while parsing CapturedMediaData:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v12

    :goto_2
    move-object/from16 v2, p0

    goto :goto_3

    :pswitch_1
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v6, v2

    goto :goto_2

    :pswitch_2
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v11

    goto :goto_2

    :pswitch_3
    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CapturedMediaDataTypeAdapter;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/google/gson/reflect/TypeToken;

    const-class v5, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-direct {v4, v5}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    goto :goto_3

    :pswitch_4
    move-object/from16 v2, p0

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v13

    goto :goto_3

    :pswitch_5
    move-object/from16 v2, p0

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    move-result-object v4

    move-object v10, v4

    goto :goto_3

    :pswitch_6
    move-object/from16 v2, p0

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    move-result-object v1

    goto :goto_3

    :pswitch_7
    move-object/from16 v2, p0

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    goto :goto_3

    :pswitch_8
    move-object/from16 v2, p0

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v14

    :goto_3
    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x2

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->endObject()V

    if-eqz v3, :cond_d

    new-instance v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-direct {v0, v3, v10, v11, v1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;ZLcom/motorola/camera/mcf/Mcf$ShotSlot;)V

    iput v12, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mDataSize:I

    iput-boolean v13, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureLogged:Z

    iput-object v6, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mByteBufferUri:Landroid/net/Uri;

    if-eqz v9, :cond_c

    cmp-long v1, v14, v7

    if-eqz v1, :cond_c

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->setActiveVideoFile(Ljava/io/File;)V

    iput-wide v14, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mActiveVideoPresentationOffsetUs:J

    :cond_c
    return-object v0

    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Malformed Json. Failed to deserialize Image Capture Record data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7555b50c -> :sswitch_8
        -0x340fee7b -> :sswitch_7
        0xbc82555 -> :sswitch_6
        0x10f1ec96 -> :sswitch_5
        0x20e61957 -> :sswitch_4
        0x20e62ea3 -> :sswitch_3
        0x3ac61700 -> :sswitch_2
        0x3f68da61 -> :sswitch_1
        0x5604cc3c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 4

    check-cast p2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()V

    iget-object v0, p2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mByteBufferUri:Landroid/net/Uri;

    iget-object v1, p2, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v2, p2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mSnapType:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    if-eqz v0, :cond_1

    const-string v0, "byt_buf_url"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-object v0, p2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mByteBufferUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "reproc_typ"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-object v0, p2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    :cond_2
    if-eqz v2, :cond_3

    const-string/jumbo v0, "snap_typ"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v0, "raw_dat"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {p2}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->isRawData()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    const-string v0, "dat_siz"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget v0, p2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mDataSize:I

    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    iget-object v0, p2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mActiveVideo:Ljava/io/File;

    if-eqz v0, :cond_4

    const-string v2, "mp_video_path"

    invoke-virtual {p1, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v0, "mp_video_duration"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-wide v2, p2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mActiveVideoPresentationOffsetUs:J

    invoke-virtual {p1, v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    :cond_4
    if-eqz v1, :cond_5

    const-string v0, "cap_rec"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-object p0, p0, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CapturedMediaDataTypeAdapter;->mGson:Lcom/google/gson/Gson;

    const-class v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-virtual {p0, v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/gson/stream/JsonWriter;->jsonValue(Ljava/lang/String;)V

    :cond_5
    const-string p0, "cap_log"

    invoke-virtual {p1, p0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-boolean p0, p2, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureLogged:Z

    invoke-virtual {p1, p0}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()V

    return-void
.end method
