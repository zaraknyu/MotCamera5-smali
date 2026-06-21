.class public final Landroidx/media3/extractor/DefaultExtractorsFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ExtractorsFactory;


# static fields
.field public static final DEFAULT_EXTRACTOR_ORDER:[I

.field public static final FLAC_EXTENSION_LOADER:Landroidx/room/concurrent/FileLock;

.field public static final MIDI_EXTENSION_LOADER:Landroidx/room/concurrent/FileLock;


# instance fields
.field public jpegFlags:I

.field public subtitleParserFactory:Lcom/google/android/gms/dynamite/zzf;

.field public textTrackTranscodingEnabled:Z

.field public tsSubtitleFormats:Lcom/google/common/collect/RegularImmutableList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/DefaultExtractorsFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    new-instance v0, Landroidx/room/concurrent/FileLock;

    new-instance v1, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {v0, v1}, Landroidx/room/concurrent/FileLock;-><init>(Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;)V

    sput-object v0, Landroidx/media3/extractor/DefaultExtractorsFactory;->FLAC_EXTENSION_LOADER:Landroidx/room/concurrent/FileLock;

    new-instance v0, Landroidx/room/concurrent/FileLock;

    new-instance v1, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {v0, v1}, Landroidx/room/concurrent/FileLock;-><init>(Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;)V

    sput-object v0, Landroidx/media3/extractor/DefaultExtractorsFactory;->MIDI_EXTENSION_LOADER:Landroidx/room/concurrent/FileLock;

    return-void

    :array_0
    .array-data 4
        0x5
        0x4
        0xc
        0x8
        0x3
        0xa
        0x9
        0xb
        0x6
        0x2
        0x0
        0x1
        0x7
        0x10
        0xf
        0xe
        0x11
        0x12
        0x13
        0x14
        0x15
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/dynamite/zzf;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->subtitleParserFactory:Lcom/google/android/gms/dynamite/zzf;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->textTrackTranscodingEnabled:Z

    return-void
.end method


# virtual methods
.method public final addExtractorsForFileType(ILjava/util/ArrayList;)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    new-instance p0, Landroidx/media3/extractor/avif/AvifExtractor;

    invoke-direct {p0, v2}, Landroidx/media3/extractor/avif/AvifExtractor;-><init>(I)V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_2
    new-instance p0, Landroidx/media3/extractor/avif/AvifExtractor;

    invoke-direct {p0, v1}, Landroidx/media3/extractor/avif/AvifExtractor;-><init>(I)V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_3
    new-instance p0, Landroidx/media3/extractor/bmp/BmpExtractor;

    invoke-direct {p0, v2, v2}, Landroidx/media3/extractor/bmp/BmpExtractor;-><init>(IB)V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_4
    new-instance p0, Landroidx/media3/extractor/avif/AvifExtractor;

    invoke-direct {p0, v0}, Landroidx/media3/extractor/avif/AvifExtractor;-><init>(I)V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_5
    new-instance p0, Landroidx/media3/extractor/bmp/BmpExtractor;

    invoke-direct {p0, v1, v2}, Landroidx/media3/extractor/bmp/BmpExtractor;-><init>(IB)V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_6
    new-instance p1, Landroidx/media3/extractor/avi/AviExtractor;

    iget-boolean v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->textTrackTranscodingEnabled:Z

    xor-int/2addr v0, v1

    iget-object p0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->subtitleParserFactory:Lcom/google/android/gms/dynamite/zzf;

    invoke-direct {p1, v0, p0}, Landroidx/media3/extractor/avi/AviExtractor;-><init>(ILcom/google/android/gms/dynamite/zzf;)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_7
    sget-object p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->MIDI_EXTENSION_LOADER:Landroidx/room/concurrent/FileLock;

    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/room/concurrent/FileLock;->getExtractor([Ljava/lang/Object;)Landroidx/media3/extractor/Extractor;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :pswitch_8
    new-instance p1, Landroidx/media3/extractor/bmp/BmpExtractor;

    iget p0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->jpegFlags:I

    invoke-direct {p1, p0}, Landroidx/media3/extractor/bmp/BmpExtractor;-><init>(I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_9
    new-instance p0, Landroidx/media3/extractor/wav/WavExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/wav/WavExtractor;-><init>()V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_a
    iget-object p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsSubtitleFormats:Lcom/google/common/collect/RegularImmutableList;

    if-nez p1, :cond_1

    sget-object p1, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object p1, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    iput-object p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsSubtitleFormats:Lcom/google/common/collect/RegularImmutableList;

    :cond_1
    new-instance p1, Landroidx/media3/extractor/ts/TsExtractor;

    iget-boolean v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->textTrackTranscodingEnabled:Z

    xor-int/2addr v0, v1

    iget-object v1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->subtitleParserFactory:Lcom/google/android/gms/dynamite/zzf;

    new-instance v2, Landroidx/media3/common/util/TimestampAdjuster;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    new-instance v3, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;

    iget-object p0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsSubtitleFormats:Lcom/google/common/collect/RegularImmutableList;

    invoke-direct {v3, p0}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(Ljava/util/List;)V

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/media3/extractor/ts/TsExtractor;-><init>(ILandroidx/media3/extractor/text/SubtitleParser$Factory;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_b
    new-instance p0, Landroidx/media3/extractor/ts/PsExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/ts/PsExtractor;-><init>()V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_c
    new-instance p0, Landroidx/media3/extractor/ogg/OggExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_d
    new-instance p1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;

    iget-object v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->subtitleParserFactory:Lcom/google/android/gms/dynamite/zzf;

    iget-boolean v1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->textTrackTranscodingEnabled:Z

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    const/16 v1, 0x20

    :goto_1
    invoke-direct {p1, v0, v1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/media3/extractor/mp4/Mp4Extractor;

    iget-object v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->subtitleParserFactory:Lcom/google/android/gms/dynamite/zzf;

    iget-boolean p0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->textTrackTranscodingEnabled:Z

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    const/16 v2, 0x10

    :goto_2
    invoke-direct {p1, v0, v2}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_e
    new-instance p0, Landroidx/media3/extractor/mp3/Mp3Extractor;

    invoke-direct {p0}, Landroidx/media3/extractor/mp3/Mp3Extractor;-><init>()V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_f
    new-instance p1, Landroidx/media3/extractor/mkv/MatroskaExtractor;

    iget-object v1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->subtitleParserFactory:Lcom/google/android/gms/dynamite/zzf;

    iget-boolean p0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->textTrackTranscodingEnabled:Z

    if-eqz p0, :cond_4

    move v0, v2

    :cond_4
    invoke-direct {p1, v1, v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_10
    new-instance p0, Landroidx/media3/extractor/flv/FlvExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/flv/FlvExtractor;-><init>()V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Landroidx/media3/extractor/DefaultExtractorsFactory;->FLAC_EXTENSION_LOADER:Landroidx/room/concurrent/FileLock;

    invoke-virtual {p1, p0}, Landroidx/room/concurrent/FileLock;->getExtractor([Ljava/lang/Object;)Landroidx/media3/extractor/Extractor;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_5
    new-instance p0, Landroidx/media3/extractor/flac/FlacExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/flac/FlacExtractor;-><init>()V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_12
    new-instance p0, Landroidx/media3/extractor/amr/AmrExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/amr/AmrExtractor;-><init>()V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_13
    new-instance p0, Landroidx/media3/extractor/ts/AdtsExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/ts/AdtsExtractor;-><init>()V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_14
    new-instance p0, Landroidx/media3/extractor/ts/Ac4Extractor;

    invoke-direct {p0}, Landroidx/media3/extractor/ts/Ac4Extractor;-><init>()V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_15
    new-instance p0, Landroidx/media3/extractor/ts/Ac3Extractor;

    invoke-direct {p0}, Landroidx/media3/extractor/ts/Ac3Extractor;-><init>()V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final declared-synchronized createExtractors()[Landroidx/media3/extractor/Extractor;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/DefaultExtractorsFactory;->createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Landroidx/media3/extractor/Extractor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Landroidx/media3/extractor/Extractor;
    .locals 27

    move-object/from16 v1, p0

    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Landroidx/media3/extractor/DefaultExtractorsFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    const/16 v3, 0x15

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    const-string v4, "Content-Type"

    move-object/from16 v5, p2

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 4
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x0

    :goto_1
    const/4 v6, -0x1

    if-nez v4, :cond_2

    goto/16 :goto_4

    .line 5
    :cond_2
    invoke-static {v4}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x14

    const/16 v9, 0x13

    const/16 v10, 0x12

    const/16 v11, 0x11

    const/16 v12, 0x10

    const/16 v13, 0xf

    const/16 v14, 0xe

    const/16 v15, 0xd

    const/16 v16, 0xc

    const/16 v17, 0xb

    const/16 v18, 0xa

    const/16 v19, 0x9

    const/16 v20, 0x8

    const/16 v21, 0x7

    const/16 v22, 0x6

    const/16 v23, 0x5

    const/16 v24, 0x4

    const/16 v25, 0x3

    const/16 v26, 0x1

    sparse-switch v7, :sswitch_data_0

    :goto_2
    move v4, v6

    goto/16 :goto_3

    :sswitch_0
    const-string/jumbo v7, "video/x-matroska"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    const/16 v4, 0x1f

    goto/16 :goto_3

    :sswitch_1
    const-string v7, "audio/webm"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    const/16 v4, 0x1e

    goto/16 :goto_3

    :sswitch_2
    const-string v7, "audio/mpeg"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    const/16 v4, 0x1d

    goto/16 :goto_3

    :sswitch_3
    const-string v7, "audio/midi"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    const/16 v4, 0x1c

    goto/16 :goto_3

    :sswitch_4
    const-string v7, "audio/flac"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_2

    :cond_7
    const/16 v4, 0x1b

    goto/16 :goto_3

    :sswitch_5
    const-string v7, "audio/eac3"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_2

    :cond_8
    const/16 v4, 0x1a

    goto/16 :goto_3

    :sswitch_6
    const-string v7, "audio/3gpp"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_2

    :cond_9
    const/16 v4, 0x19

    goto/16 :goto_3

    :sswitch_7
    const-string/jumbo v7, "video/mp4"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_2

    :cond_a
    const/16 v4, 0x18

    goto/16 :goto_3

    :sswitch_8
    const-string v7, "audio/wav"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_2

    :cond_b
    const/16 v4, 0x17

    goto/16 :goto_3

    :sswitch_9
    const-string v7, "audio/ogg"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_2

    :cond_c
    const/16 v4, 0x16

    goto/16 :goto_3

    :sswitch_a
    const-string v7, "audio/mp4"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto/16 :goto_2

    :cond_d
    move v4, v3

    goto/16 :goto_3

    :sswitch_b
    const-string v7, "audio/amr"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto/16 :goto_2

    :cond_e
    move v4, v8

    goto/16 :goto_3

    :sswitch_c
    const-string v7, "audio/ac4"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    goto/16 :goto_2

    :cond_f
    move v4, v9

    goto/16 :goto_3

    :sswitch_d
    const-string v7, "audio/ac3"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    goto/16 :goto_2

    :cond_10
    move v4, v10

    goto/16 :goto_3

    :sswitch_e
    const-string/jumbo v7, "video/x-flv"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    goto/16 :goto_2

    :cond_11
    move v4, v11

    goto/16 :goto_3

    :sswitch_f
    const-string v7, "application/webm"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    goto/16 :goto_2

    :cond_12
    move v4, v12

    goto/16 :goto_3

    :sswitch_10
    const-string v7, "audio/x-matroska"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    goto/16 :goto_2

    :cond_13
    move v4, v13

    goto/16 :goto_3

    :sswitch_11
    const-string v7, "image/png"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    goto/16 :goto_2

    :cond_14
    move v4, v14

    goto/16 :goto_3

    :sswitch_12
    const-string v7, "image/bmp"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    goto/16 :goto_2

    :cond_15
    move v4, v15

    goto/16 :goto_3

    :sswitch_13
    const-string/jumbo v7, "text/vtt"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    goto/16 :goto_2

    :cond_16
    move/from16 v4, v16

    goto/16 :goto_3

    :sswitch_14
    const-string/jumbo v7, "video/x-msvideo"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    goto/16 :goto_2

    :cond_17
    move/from16 v4, v17

    goto/16 :goto_3

    :sswitch_15
    const-string v7, "application/mp4"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    goto/16 :goto_2

    :cond_18
    move/from16 v4, v18

    goto/16 :goto_3

    :sswitch_16
    const-string v7, "image/webp"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    goto/16 :goto_2

    :cond_19
    move/from16 v4, v19

    goto/16 :goto_3

    :sswitch_17
    const-string v7, "image/jpeg"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    goto/16 :goto_2

    :cond_1a
    move/from16 v4, v20

    goto/16 :goto_3

    :sswitch_18
    const-string v7, "image/heif"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    goto/16 :goto_2

    :cond_1b
    move/from16 v4, v21

    goto :goto_3

    :sswitch_19
    const-string v7, "image/heic"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    goto/16 :goto_2

    :cond_1c
    move/from16 v4, v22

    goto :goto_3

    :sswitch_1a
    const-string v7, "image/avif"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    goto/16 :goto_2

    :cond_1d
    move/from16 v4, v23

    goto :goto_3

    :sswitch_1b
    const-string v7, "audio/amr-wb"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    goto/16 :goto_2

    :cond_1e
    move/from16 v4, v24

    goto :goto_3

    :sswitch_1c
    const-string/jumbo v7, "video/webm"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    goto/16 :goto_2

    :cond_1f
    move/from16 v4, v25

    goto :goto_3

    :sswitch_1d
    const-string/jumbo v7, "video/mp2t"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    goto/16 :goto_2

    :cond_20
    const/4 v4, 0x2

    goto :goto_3

    :sswitch_1e
    const-string/jumbo v7, "video/mp2p"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    goto/16 :goto_2

    :cond_21
    move/from16 v4, v26

    goto :goto_3

    :sswitch_1f
    const-string v7, "audio/eac3-joc"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    goto/16 :goto_2

    :cond_22
    move v4, v5

    :goto_3
    packed-switch v4, :pswitch_data_0

    :goto_4
    move v8, v6

    goto :goto_5

    :pswitch_0
    move/from16 v8, v21

    goto :goto_5

    :pswitch_1
    move v8, v13

    goto :goto_5

    :pswitch_2
    move/from16 v8, v24

    goto :goto_5

    :pswitch_3
    move/from16 v8, v16

    goto :goto_5

    :pswitch_4
    move/from16 v8, v19

    goto :goto_5

    :pswitch_5
    move/from16 v8, v26

    goto :goto_5

    :pswitch_6
    move/from16 v8, v23

    goto :goto_5

    :pswitch_7
    move v8, v11

    goto :goto_5

    :pswitch_8
    move v8, v9

    goto :goto_5

    :pswitch_9
    move v8, v15

    goto :goto_5

    :pswitch_a
    move v8, v12

    goto :goto_5

    :pswitch_b
    move/from16 v8, v20

    goto :goto_5

    :pswitch_c
    move v8, v10

    goto :goto_5

    :pswitch_d
    move v8, v14

    goto :goto_5

    :pswitch_e
    move v8, v3

    goto :goto_5

    :pswitch_f
    move/from16 v8, v25

    goto :goto_5

    :pswitch_10
    move/from16 v8, v22

    goto :goto_5

    :pswitch_11
    move/from16 v8, v17

    goto :goto_5

    :pswitch_12
    move/from16 v8, v18

    goto :goto_5

    :pswitch_13
    move v8, v5

    :goto_5
    :pswitch_14
    if-eq v8, v6, :cond_23

    .line 7
    :try_start_1
    invoke-virtual {v1, v8, v0}, Landroidx/media3/extractor/DefaultExtractorsFactory;->addExtractorsForFileType(ILjava/util/ArrayList;)V

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_8

    .line 8
    :cond_23
    :goto_6
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/FileTypes;->inferFileTypeFromUri(Landroid/net/Uri;)I

    move-result v4

    if-eq v4, v6, :cond_24

    if-eq v4, v8, :cond_24

    .line 9
    invoke-virtual {v1, v4, v0}, Landroidx/media3/extractor/DefaultExtractorsFactory;->addExtractorsForFileType(ILjava/util/ArrayList;)V

    :cond_24
    :goto_7
    if-ge v5, v3, :cond_26

    .line 10
    aget v6, v2, v5

    if-eq v6, v8, :cond_25

    if-eq v6, v4, :cond_25

    .line 11
    invoke-virtual {v1, v6, v0}, Landroidx/media3/extractor/DefaultExtractorsFactory;->addExtractorsForFileType(ILjava/util/ArrayList;)V

    :cond_25
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 12
    :cond_26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroidx/media3/extractor/Extractor;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media3/extractor/Extractor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_8
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_1f
        -0x6315f78b -> :sswitch_1e
        -0x6315f787 -> :sswitch_1d
        -0x63118f53 -> :sswitch_1c
        -0x5fc6f775 -> :sswitch_1b
        -0x58abd7ba -> :sswitch_1a
        -0x58a8e8f5 -> :sswitch_19
        -0x58a8e8f2 -> :sswitch_18
        -0x58a7d764 -> :sswitch_17
        -0x58a21830 -> :sswitch_16
        -0x4a681e4e -> :sswitch_15
        -0x405dba54 -> :sswitch_14
        -0x3be2f26c -> :sswitch_13
        -0x3468a12f -> :sswitch_12
        -0x34686c8b -> :sswitch_11
        -0x17118226 -> :sswitch_10
        -0x2974308 -> :sswitch_f
        0xd45707 -> :sswitch_e
        0xb269698 -> :sswitch_d
        0xb269699 -> :sswitch_c
        0xb26980d -> :sswitch_b
        0xb26c538 -> :sswitch_a
        0xb26cbd6 -> :sswitch_9
        0xb26e933 -> :sswitch_8
        0x4f62635d -> :sswitch_7
        0x59976a2d -> :sswitch_6
        0x59ae0c65 -> :sswitch_5
        0x59aeaa01 -> :sswitch_4
        0x59b1cdba -> :sswitch_3
        0x59b1e81e -> :sswitch_2
        0x59b64a32 -> :sswitch_1
        0x79909c15 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_14
        :pswitch_14
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_10
        :pswitch_10
        :pswitch_6
        :pswitch_13
        :pswitch_5
        :pswitch_f
        :pswitch_b
        :pswitch_4
        :pswitch_3
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method
