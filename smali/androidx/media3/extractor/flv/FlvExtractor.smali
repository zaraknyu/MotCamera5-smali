.class public final Landroidx/media3/extractor/flv/FlvExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# instance fields
.field public audioReader:Landroidx/media3/extractor/flv/AudioTagPayloadReader;

.field public bytesToNextTagHeader:I

.field public extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field public final headerBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field public mediaTagTimestampOffsetUs:J

.field public final metadataReader:Landroidx/media3/extractor/flv/ScriptTagPayloadReader;

.field public outputFirstSample:Z

.field public outputSeekMap:Z

.field public final scratch:Landroidx/media3/common/util/ParsableByteArray;

.field public state:I

.field public final tagData:Landroidx/media3/common/util/ParsableByteArray;

.field public tagDataSize:I

.field public final tagHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field public tagTimestampUs:J

.field public tagType:I

.field public videoReader:Landroidx/media3/extractor/flv/VideoTagPayloadReader;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->headerBuffer:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagData:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;

    new-instance v1, Landroidx/media3/extractor/DiscardingTrackOutput;

    invoke-direct {v1}, Landroidx/media3/extractor/DiscardingTrackOutput;-><init>()V

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroidx/media3/common/BasePlayer;-><init>(ILjava/lang/Object;)V

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, v0, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->durationUs:J

    const/4 v1, 0x0

    new-array v2, v1, [J

    iput-object v2, v0, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->keyFrameTimesUs:[J

    new-array v1, v1, [J

    iput-object v1, v0, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->keyFrameTagPositions:[J

    iput-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->metadataReader:Landroidx/media3/extractor/flv/ScriptTagPayloadReader;

    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->state:I

    return-void
.end method


# virtual methods
.method public final init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    return-void
.end method

.method public final prepareTagData(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/common/util/ParsableByteArray;
    .locals 5

    iget v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagDataSize:I

    iget-object v1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagData:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v2, v1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    array-length v3, v2

    const/4 v4, 0x0

    if-le v0, v3, :cond_0

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v1, v4, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I[B)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    :goto_0
    iget v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    iget-object v0, v1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget p0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-interface {p1, v0, v4, p0}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    return-object v1
.end method

.method public final read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-static {v2}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->state:I

    const/16 v3, 0x9

    const/16 v4, 0x8

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-eq v2, v7, :cond_29

    const/4 v9, 0x3

    if-eq v2, v5, :cond_28

    if-eq v2, v9, :cond_26

    if-ne v2, v6, :cond_25

    iget-boolean v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->outputFirstSample:Z

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v13, v0, Landroidx/media3/extractor/flv/FlvExtractor;->metadataReader:Landroidx/media3/extractor/flv/ScriptTagPayloadReader;

    if-eqz v2, :cond_1

    iget-wide v14, v0, Landroidx/media3/extractor/flv/FlvExtractor;->mediaTagTimestampOffsetUs:J

    iget-wide v11, v0, Landroidx/media3/extractor/flv/FlvExtractor;->tagTimestampUs:J

    add-long/2addr v14, v11

    :goto_1
    move-wide/from16 v17, v14

    goto :goto_2

    :cond_1
    iget-wide v11, v13, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->durationUs:J

    cmp-long v2, v11, v9

    if-nez v2, :cond_2

    const-wide/16 v17, 0x0

    goto :goto_2

    :cond_2
    iget-wide v14, v0, Landroidx/media3/extractor/flv/FlvExtractor;->tagTimestampUs:J

    goto :goto_1

    :goto_2
    iget v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->tagType:I

    if-ne v2, v4, :cond_e

    iget-object v4, v0, Landroidx/media3/extractor/flv/FlvExtractor;->audioReader:Landroidx/media3/extractor/flv/AudioTagPayloadReader;

    if-eqz v4, :cond_e

    iget-boolean v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->outputSeekMap:Z

    if-nez v2, :cond_3

    iget-object v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v3, Landroidx/media3/extractor/SeekMap$Unseekable;

    invoke-direct {v3, v9, v10}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v2, v3}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    iput-boolean v7, v0, Landroidx/media3/extractor/flv/FlvExtractor;->outputSeekMap:Z

    :cond_3
    iget-object v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->audioReader:Landroidx/media3/extractor/flv/AudioTagPayloadReader;

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/extractor/flv/FlvExtractor;->prepareTagData(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/common/util/ParsableByteArray;

    move-result-object v3

    iget-object v4, v2, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/extractor/TrackOutput;

    iget-boolean v11, v2, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->hasParsedAudioDataHeader:Z

    const/4 v12, 0x1

    if-nez v11, :cond_9

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    shr-int/lit8 v14, v11, 0x4

    and-int/lit8 v14, v14, 0xf

    iput v14, v2, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const-string/jumbo v15, "video/x-flv"

    const/16 p2, 0x0

    const/4 v8, 0x2

    if-ne v14, v8, :cond_4

    shr-int/lit8 v8, v11, 0x2

    and-int/lit8 v8, v8, 0x3

    sget-object v11, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->AUDIO_SAMPLING_RATE_TABLE:[I

    aget v8, v11, v8

    new-instance v11, Landroidx/media3/common/Format$Builder;

    invoke-direct {v11}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-static {v15}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Landroidx/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    const-string v14, "audio/mpeg"

    invoke-static {v14}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iput v12, v11, Landroidx/media3/common/Format$Builder;->channelCount:I

    iput v8, v11, Landroidx/media3/common/Format$Builder;->sampleRate:I

    invoke-static {v11, v4}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Landroidx/media3/common/Format$Builder;Landroidx/media3/extractor/TrackOutput;)V

    iput-boolean v12, v2, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    goto :goto_5

    :cond_4
    const/4 v8, 0x7

    if-eq v14, v8, :cond_7

    const/16 v11, 0x8

    if-ne v14, v11, :cond_5

    goto :goto_3

    :cond_5
    const/16 v4, 0xa

    if-ne v14, v4, :cond_6

    goto :goto_5

    :cond_6
    new-instance v0, Landroidx/media3/exoplayer/source/UnrecognizedInputFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Audio format not supported: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v2, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_3
    if-ne v14, v8, :cond_8

    const-string v8, "audio/g711-alaw"

    goto :goto_4

    :cond_8
    const-string v8, "audio/g711-mlaw"

    :goto_4
    new-instance v11, Landroidx/media3/common/Format$Builder;

    invoke-direct {v11}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-static {v15}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Landroidx/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    invoke-static {v8}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v11, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iput v12, v11, Landroidx/media3/common/Format$Builder;->channelCount:I

    const/16 v8, 0x1f40

    iput v8, v11, Landroidx/media3/common/Format$Builder;->sampleRate:I

    invoke-static {v11, v4}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Landroidx/media3/common/Format$Builder;Landroidx/media3/extractor/TrackOutput;)V

    iput-boolean v12, v2, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    :goto_5
    iput-boolean v12, v2, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->hasParsedAudioDataHeader:Z

    goto :goto_6

    :cond_9
    const/16 p2, 0x0

    invoke-virtual {v3, v12}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :goto_6
    iget-object v4, v2, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/extractor/TrackOutput;

    iget v8, v2, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v14, 0x0

    if-ne v8, v11, :cond_a

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    invoke-interface {v4, v3, v8, v14}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    iget-object v2, v2, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    move-object/from16 v16, v2

    check-cast v16, Landroidx/media3/extractor/TrackOutput;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x1

    move/from16 v20, v8

    invoke-interface/range {v16 .. v22}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    :goto_7
    move v14, v12

    goto :goto_8

    :cond_a
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    if-nez v8, :cond_b

    iget-boolean v11, v2, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    if-nez v11, :cond_b

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    new-array v11, v8, [B

    invoke-virtual {v3, v14, v8, v11}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    new-instance v3, Landroidx/media3/extractor/VorbisBitArray;

    invoke-direct {v3, v8, v11}, Landroidx/media3/extractor/VorbisBitArray;-><init>(I[B)V

    invoke-static {v3, v14}, Landroidx/media3/extractor/AacUtil;->parseAudioSpecificConfig(Landroidx/media3/extractor/VorbisBitArray;Z)Landroidx/media3/extractor/AacUtil$Config;

    move-result-object v3

    new-instance v8, Landroidx/media3/common/Format$Builder;

    invoke-direct {v8}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string/jumbo v15, "video/x-flv"

    invoke-static {v15}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v8, Landroidx/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    const-string v15, "audio/mp4a-latm"

    invoke-static {v15}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v8, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iget-object v15, v3, Landroidx/media3/extractor/AacUtil$Config;->codecs:Ljava/lang/String;

    iput-object v15, v8, Landroidx/media3/common/Format$Builder;->codecs:Ljava/lang/String;

    iget v15, v3, Landroidx/media3/extractor/AacUtil$Config;->channelCount:I

    iput v15, v8, Landroidx/media3/common/Format$Builder;->channelCount:I

    iget v3, v3, Landroidx/media3/extractor/AacUtil$Config;->sampleRateHz:I

    iput v3, v8, Landroidx/media3/common/Format$Builder;->sampleRate:I

    invoke-static {v11}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v8, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    invoke-static {v8, v4}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Landroidx/media3/common/Format$Builder;Landroidx/media3/extractor/TrackOutput;)V

    iput-boolean v12, v2, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    goto :goto_8

    :cond_b
    iget v11, v2, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/16 v15, 0xa

    if-ne v11, v15, :cond_c

    if-ne v8, v12, :cond_d

    :cond_c
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    invoke-interface {v4, v3, v8, v14}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    iget-object v2, v2, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    move-object/from16 v16, v2

    check-cast v16, Landroidx/media3/extractor/TrackOutput;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x1

    move/from16 v20, v8

    invoke-interface/range {v16 .. v22}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    goto :goto_7

    :cond_d
    :goto_8
    move v2, v7

    move-wide/from16 v19, v9

    goto/16 :goto_11

    :cond_e
    const/16 p2, 0x0

    if-ne v2, v3, :cond_19

    iget-object v3, v0, Landroidx/media3/extractor/flv/FlvExtractor;->videoReader:Landroidx/media3/extractor/flv/VideoTagPayloadReader;

    if-eqz v3, :cond_19

    iget-boolean v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->outputSeekMap:Z

    if-nez v2, :cond_f

    iget-object v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v3, Landroidx/media3/extractor/SeekMap$Unseekable;

    invoke-direct {v3, v9, v10}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v2, v3}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    iput-boolean v7, v0, Landroidx/media3/extractor/flv/FlvExtractor;->outputSeekMap:Z

    :cond_f
    iget-object v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->videoReader:Landroidx/media3/extractor/flv/VideoTagPayloadReader;

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/extractor/flv/FlvExtractor;->prepareTagData(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/common/util/ParsableByteArray;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    shr-int/lit8 v8, v4, 0x4

    and-int/lit8 v8, v8, 0xf

    and-int/lit8 v4, v4, 0xf

    const/4 v11, 0x7

    if-ne v4, v11, :cond_18

    iput v8, v2, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->frameType:I

    const/4 v4, 0x5

    if-eq v8, v4, :cond_10

    const/4 v4, 0x1

    goto :goto_9

    :cond_10
    const/4 v4, 0x0

    :goto_9
    if-eqz v4, :cond_16

    iget-object v4, v2, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v8, v2, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast v8, Landroidx/media3/extractor/TrackOutput;

    iget-object v11, v2, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->nalLength:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    iget-object v14, v3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v15, v3, Landroidx/media3/common/util/ParsableByteArray;->position:I

    move-wide/from16 v19, v9

    add-int/lit8 v9, v15, 0x1

    iput v9, v3, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v10, v14, v15

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    shr-int/lit8 v10, v10, 0x8

    add-int/lit8 v5, v15, 0x2

    iput v5, v3, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v9, v14, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v9, v10

    add-int/lit8 v15, v15, 0x3

    iput v15, v3, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v5, v14, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v9

    int-to-long v9, v5

    const-wide/16 v14, 0x3e8

    mul-long/2addr v9, v14

    add-long v22, v9, v17

    const/4 v5, 0x0

    const/4 v9, 0x1

    if-nez v12, :cond_11

    iget-boolean v10, v2, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    if-nez v10, :cond_11

    new-instance v4, Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v10

    new-array v10, v10, [B

    invoke-direct {v4, v10}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v11

    invoke-virtual {v3, v5, v11, v10}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-static {v4}, Landroidx/media3/extractor/AvcConfig;->parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/AvcConfig;

    move-result-object v3

    iget v4, v3, Landroidx/media3/extractor/AvcConfig;->nalUnitLengthFieldLength:I

    iput v4, v2, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    new-instance v4, Landroidx/media3/common/Format$Builder;

    invoke-direct {v4}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string/jumbo v10, "video/x-flv"

    invoke-static {v10}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Landroidx/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    const-string/jumbo v10, "video/avc"

    invoke-static {v10}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iget-object v10, v3, Landroidx/media3/extractor/AvcConfig;->codecs:Ljava/lang/String;

    iput-object v10, v4, Landroidx/media3/common/Format$Builder;->codecs:Ljava/lang/String;

    iget v10, v3, Landroidx/media3/extractor/AvcConfig;->width:I

    iput v10, v4, Landroidx/media3/common/Format$Builder;->width:I

    iget v10, v3, Landroidx/media3/extractor/AvcConfig;->height:I

    iput v10, v4, Landroidx/media3/common/Format$Builder;->height:I

    iget v10, v3, Landroidx/media3/extractor/AvcConfig;->pixelWidthHeightRatio:F

    iput v10, v4, Landroidx/media3/common/Format$Builder;->pixelWidthHeightRatio:F

    iget-object v3, v3, Landroidx/media3/extractor/AvcConfig;->initializationData:Ljava/util/ArrayList;

    iput-object v3, v4, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    invoke-static {v4, v8}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Landroidx/media3/common/Format$Builder;Landroidx/media3/extractor/TrackOutput;)V

    iput-boolean v9, v2, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    goto :goto_c

    :cond_11
    if-ne v12, v9, :cond_15

    iget-boolean v10, v2, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    if-eqz v10, :cond_15

    iget v10, v2, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->frameType:I

    if-ne v10, v9, :cond_12

    move/from16 v24, v9

    goto :goto_a

    :cond_12
    move/from16 v24, v5

    :goto_a
    iget-boolean v10, v2, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->hasOutputKeyframe:Z

    if-nez v10, :cond_13

    if-nez v24, :cond_13

    goto :goto_c

    :cond_13
    iget-object v10, v11, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aput-byte v5, v10, v5

    aput-byte v5, v10, v9

    const/4 v12, 0x2

    aput-byte v5, v10, v12

    iget v10, v2, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    const/4 v12, 0x4

    rsub-int/lit8 v10, v10, 0x4

    move/from16 v25, v5

    :goto_b
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v14

    if-lez v14, :cond_14

    iget-object v14, v11, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v15, v2, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    invoke-virtual {v3, v10, v15, v14}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-virtual {v11, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v14

    invoke-virtual {v4, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-interface {v8, v4, v12, v5}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    add-int/lit8 v25, v25, 0x4

    invoke-interface {v8, v3, v14, v5}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    add-int v25, v25, v14

    goto :goto_b

    :cond_14
    iget-object v3, v2, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    move-object/from16 v21, v3

    check-cast v21, Landroidx/media3/extractor/TrackOutput;

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-interface/range {v21 .. v27}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    iput-boolean v9, v2, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->hasOutputKeyframe:Z

    move v5, v9

    :cond_15
    :goto_c
    if-eqz v5, :cond_17

    move v2, v7

    goto :goto_d

    :cond_16
    move-wide/from16 v19, v9

    :cond_17
    move/from16 v2, p2

    :goto_d
    move v14, v2

    :goto_e
    move v2, v7

    goto/16 :goto_11

    :cond_18
    new-instance v0, Landroidx/media3/exoplayer/source/UnrecognizedInputFormatException;

    const-string v1, "Video format not supported: "

    invoke-static {v4, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    move-wide/from16 v19, v9

    const/16 v3, 0x12

    if-ne v2, v3, :cond_22

    iget-boolean v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->outputSeekMap:Z

    if-nez v2, :cond_22

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/extractor/flv/FlvExtractor;->prepareTagData(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/common/util/ParsableByteArray;

    move-result-object v2

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1a

    goto/16 :goto_10

    :cond_1a
    invoke-static {v2}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->readAmfString(Landroidx/media3/common/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "onMetaData"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto/16 :goto_10

    :cond_1b
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-nez v3, :cond_1c

    goto/16 :goto_10

    :cond_1c
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1d

    goto/16 :goto_10

    :cond_1d
    invoke-static {v2}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->readAmfEcmaArray(Landroidx/media3/common/util/ParsableByteArray;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "duration"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Double;

    const-wide v8, 0x412e848000000000L    # 1000000.0

    if-eqz v4, :cond_1e

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/16 v10, 0x0

    cmpl-double v5, v3, v10

    if-lez v5, :cond_1e

    mul-double/2addr v3, v8

    double-to-long v3, v3

    iput-wide v3, v13, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->durationUs:J

    :cond_1e
    const-string v3, "keyframes"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_20

    check-cast v2, Ljava/util/Map;

    const-string v3, "filepositions"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "times"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_20

    instance-of v4, v2, Ljava/util/List;

    if-eqz v4, :cond_20

    check-cast v3, Ljava/util/List;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v5, v4, [J

    iput-object v5, v13, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->keyFrameTimesUs:[J

    new-array v5, v4, [J

    iput-object v5, v13, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->keyFrameTagPositions:[J

    const/4 v5, 0x0

    move v10, v5

    :goto_f
    if-ge v10, v4, :cond_20

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v14, v12, Ljava/lang/Double;

    if-eqz v14, :cond_1f

    instance-of v14, v11, Ljava/lang/Double;

    if-eqz v14, :cond_1f

    iget-object v14, v13, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->keyFrameTimesUs:[J

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    move-wide/from16 v21, v8

    mul-double v8, v17, v21

    double-to-long v8, v8

    aput-wide v8, v14, v10

    iget-object v8, v13, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->keyFrameTagPositions:[J

    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->longValue()J

    move-result-wide v11

    aput-wide v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v8, v21

    goto :goto_f

    :cond_1f
    new-array v2, v5, [J

    iput-object v2, v13, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->keyFrameTimesUs:[J

    new-array v2, v5, [J

    iput-object v2, v13, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->keyFrameTagPositions:[J

    :cond_20
    :goto_10
    iget-wide v2, v13, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->durationUs:J

    cmp-long v4, v2, v19

    if-eqz v4, :cond_21

    iget-object v4, v0, Landroidx/media3/extractor/flv/FlvExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v5, Landroidx/media3/extractor/IndexSeekMap;

    iget-object v8, v13, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->keyFrameTagPositions:[J

    iget-object v9, v13, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->keyFrameTimesUs:[J

    invoke-direct {v5, v2, v3, v8, v9}, Landroidx/media3/extractor/IndexSeekMap;-><init>(J[J[J)V

    invoke-interface {v4, v5}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    iput-boolean v7, v0, Landroidx/media3/extractor/flv/FlvExtractor;->outputSeekMap:Z

    :cond_21
    move/from16 v14, p2

    goto/16 :goto_e

    :cond_22
    iget v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    move/from16 v2, p2

    move v14, v2

    :goto_11
    iget-boolean v3, v0, Landroidx/media3/extractor/flv/FlvExtractor;->outputFirstSample:Z

    if-nez v3, :cond_24

    if-eqz v14, :cond_24

    iput-boolean v7, v0, Landroidx/media3/extractor/flv/FlvExtractor;->outputFirstSample:Z

    iget-wide v3, v13, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->durationUs:J

    cmp-long v3, v3, v19

    if-nez v3, :cond_23

    iget-wide v3, v0, Landroidx/media3/extractor/flv/FlvExtractor;->tagTimestampUs:J

    neg-long v11, v3

    goto :goto_12

    :cond_23
    const-wide/16 v11, 0x0

    :goto_12
    iput-wide v11, v0, Landroidx/media3/extractor/flv/FlvExtractor;->mediaTagTimestampOffsetUs:J

    :cond_24
    iput v6, v0, Landroidx/media3/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    const/4 v3, 0x2

    iput v3, v0, Landroidx/media3/extractor/flv/FlvExtractor;->state:I

    if-eqz v2, :cond_0

    return p2

    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_26
    const/16 p2, 0x0

    iget-object v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->tagHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v3, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/16 v4, 0xb

    move/from16 v5, p2

    invoke-interface {v1, v5, v7, v3, v4}, Landroidx/media3/extractor/ExtractorInput;->readFully(IZ[BI)Z

    move-result v3

    if-nez v3, :cond_27

    goto :goto_13

    :cond_27
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    iput v3, v0, Landroidx/media3/extractor/flv/FlvExtractor;->tagType:I

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v3

    iput v3, v0, Landroidx/media3/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v0, Landroidx/media3/extractor/flv/FlvExtractor;->tagTimestampUs:J

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    int-to-long v3, v3

    iget-wide v7, v0, Landroidx/media3/extractor/flv/FlvExtractor;->tagTimestampUs:J

    or-long/2addr v3, v7

    const-wide/16 v7, 0x3e8

    mul-long/2addr v3, v7

    iput-wide v3, v0, Landroidx/media3/extractor/flv/FlvExtractor;->tagTimestampUs:J

    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    iput v6, v0, Landroidx/media3/extractor/flv/FlvExtractor;->state:I

    goto/16 :goto_0

    :cond_28
    iget v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    const/4 v5, 0x0

    iput v5, v0, Landroidx/media3/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    iput v9, v0, Landroidx/media3/extractor/flv/FlvExtractor;->state:I

    goto/16 :goto_0

    :cond_29
    const/4 v5, 0x0

    iget-object v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->headerBuffer:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v8, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v5, v7, v8, v3}, Landroidx/media3/extractor/ExtractorInput;->readFully(IZ[BI)Z

    move-result v8

    if-nez v8, :cond_2a

    :goto_13
    const/4 v0, -0x1

    return v0

    :cond_2a
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    and-int/lit8 v8, v6, 0x4

    if-eqz v8, :cond_2b

    move v8, v7

    goto :goto_14

    :cond_2b
    move v8, v5

    :goto_14
    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2c

    move v5, v7

    :cond_2c
    if-eqz v8, :cond_2d

    iget-object v6, v0, Landroidx/media3/extractor/flv/FlvExtractor;->audioReader:Landroidx/media3/extractor/flv/AudioTagPayloadReader;

    if-nez v6, :cond_2d

    new-instance v6, Landroidx/media3/extractor/flv/AudioTagPayloadReader;

    iget-object v8, v0, Landroidx/media3/extractor/flv/FlvExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v8, v4, v7}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v4

    const/4 v7, 0x2

    invoke-direct {v6, v7, v4}, Landroidx/media3/common/BasePlayer;-><init>(ILjava/lang/Object;)V

    iput-object v6, v0, Landroidx/media3/extractor/flv/FlvExtractor;->audioReader:Landroidx/media3/extractor/flv/AudioTagPayloadReader;

    :cond_2d
    if-eqz v5, :cond_2e

    iget-object v4, v0, Landroidx/media3/extractor/flv/FlvExtractor;->videoReader:Landroidx/media3/extractor/flv/VideoTagPayloadReader;

    if-nez v4, :cond_2e

    new-instance v4, Landroidx/media3/extractor/flv/VideoTagPayloadReader;

    iget-object v5, v0, Landroidx/media3/extractor/flv/FlvExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    const/4 v6, 0x2

    invoke-interface {v5, v3, v6}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v3

    invoke-direct {v4, v3}, Landroidx/media3/extractor/flv/VideoTagPayloadReader;-><init>(Landroidx/media3/extractor/TrackOutput;)V

    iput-object v4, v0, Landroidx/media3/extractor/flv/FlvExtractor;->videoReader:Landroidx/media3/extractor/flv/VideoTagPayloadReader;

    :cond_2e
    iget-object v3, v0, Landroidx/media3/extractor/flv/FlvExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v3}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    iput v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    const/4 v3, 0x2

    iput v3, v0, Landroidx/media3/extractor/flv/FlvExtractor;->state:I

    goto/16 :goto_0
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public final seek(JJ)V
    .locals 0

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->state:I

    iput-boolean p2, p0, Landroidx/media3/extractor/flv/FlvExtractor;->outputFirstSample:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    iput p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->state:I

    :goto_0
    iput p2, p0, Landroidx/media3/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    return-void
.end method

.method public final sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 3

    iget-object p0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    check-cast p1, Landroidx/media3/extractor/DefaultExtractorInput;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v1, v0, v2}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully(IZ[BI)Z

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    const v2, 0x464c56

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v1, v0, v2}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully(IZ[BI)Z

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    and-int/lit16 v0, v0, 0xfa

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v1, v0, v2}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully(IZ[BI)Z

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    iput v1, p1, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    invoke-virtual {p1, v0, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-virtual {p1, v1, v1, v0, v2}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully(IZ[BI)Z

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method
