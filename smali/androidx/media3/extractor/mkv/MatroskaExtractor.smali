.class public final Landroidx/media3/extractor/mkv/MatroskaExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# static fields
.field public static final SSA_DIALOGUE_FORMAT:[B

.field public static final SSA_PREFIX:[B

.field public static final SUBRIP_PREFIX:[B

.field public static final TRACK_NAME_TO_ROTATION_DEGREES:Ljava/util/Map;

.field public static final VTT_PREFIX:[B

.field public static final WAVE_SUBFORMAT_PCM:Ljava/util/UUID;


# instance fields
.field public blockAdditionalId:I

.field public blockDurationUs:J

.field public blockFlags:I

.field public blockGroupDiscardPaddingNs:J

.field public blockHasReferenceBlock:Z

.field public blockSampleCount:I

.field public blockSampleIndex:I

.field public blockSampleSizes:[I

.field public blockState:I

.field public blockTimeUs:J

.field public blockTrackNumber:I

.field public blockTrackNumberLength:I

.field public clusterTimecodeUs:J

.field public cueClusterPositions:Landroidx/media3/common/util/LongArray;

.field public cueTimesUs:Landroidx/media3/common/util/LongArray;

.field public cuesContentPosition:J

.field public currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

.field public durationTimecode:J

.field public durationUs:J

.field public final encryptionInitializationVector:Landroidx/media3/common/util/ParsableByteArray;

.field public final encryptionSubsampleData:Landroidx/media3/common/util/ParsableByteArray;

.field public encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

.field public extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field public haveOutputSample:Z

.field public isWebm:Z

.field public final nalLength:Landroidx/media3/common/util/ParsableByteArray;

.field public final nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

.field public final parseSubtitlesDuringExtraction:Z

.field public final reader:Landroidx/media3/extractor/mkv/DefaultEbmlReader;

.field public sampleBytesRead:I

.field public sampleBytesWritten:I

.field public sampleCurrentNalBytesRemaining:I

.field public sampleEncodingHandled:Z

.field public sampleInitializationVectorRead:Z

.field public samplePartitionCount:I

.field public samplePartitionCountRead:Z

.field public sampleSignalByte:B

.field public sampleSignalByteRead:Z

.field public final sampleStrippedBytes:Landroidx/media3/common/util/ParsableByteArray;

.field public final scratch:Landroidx/media3/common/util/ParsableByteArray;

.field public seekEntryId:I

.field public final seekEntryIdBytes:Landroidx/media3/common/util/ParsableByteArray;

.field public seekEntryPosition:J

.field public seekForCues:Z

.field public final seekForCuesEnabled:Z

.field public seekPositionAfterBuildingCues:J

.field public seenClusterPositionForCurrentCuePoint:Z

.field public segmentContentPosition:J

.field public segmentContentSize:J

.field public sentSeekMap:Z

.field public final subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

.field public final subtitleSample:Landroidx/media3/common/util/ParsableByteArray;

.field public final supplementalData:Landroidx/media3/common/util/ParsableByteArray;

.field public timecodeScale:J

.field public final tracks:Landroid/util/SparseArray;

.field public final varintReader:Landroidx/media3/extractor/mkv/VarintReader;

.field public final vorbisNumPageSamples:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x20

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media3/extractor/mkv/MatroskaExtractor;->SUBRIP_PREFIX:[B

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v2, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Landroidx/media3/extractor/mkv/MatroskaExtractor;->SSA_DIALOGUE_FORMAT:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->SSA_PREFIX:[B

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->VTT_PREFIX:[B

    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "htc_video_rotA-090"

    const/16 v2, 0x5a

    const/4 v3, 0x0

    const-string v4, "htc_video_rotA-000"

    invoke-static {v3, v0, v4, v2, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "htc_video_rotA-270"

    const/16 v2, 0x10e

    const/16 v3, 0xb4

    const-string v4, "htc_video_rotA-180"

    invoke-static {v3, v0, v4, v2, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->TRACK_NAME_TO_ROTATION_DEGREES:Ljava/util/Map;

    return-void

    nop

    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data

    :array_2
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x56t
        0x54t
        0x54t
        0xat
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data
.end method

.method public constructor <init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V
    .locals 5

    new-instance v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;

    invoke-direct {v0}, Landroidx/media3/extractor/mkv/DefaultEbmlReader;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    iput-wide v3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    iput-wide v3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->durationUs:J

    iput-wide v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    iput-wide v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    iput-wide v3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    iput-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->reader:Landroidx/media3/extractor/mkv/DefaultEbmlReader;

    new-instance v1, Lcom/google/android/gms/tasks/zzs;

    const/16 v2, 0x12

    invoke-direct {v1, v2, p0}, Lcom/google/android/gms/tasks/zzs;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->processor:Lcom/google/android/gms/tasks/zzs;

    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    and-int/lit8 p1, p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekForCuesEnabled:Z

    and-int/lit8 p1, p2, 0x2

    if-nez p1, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->parseSubtitlesDuringExtraction:Z

    new-instance p1, Landroidx/media3/extractor/mkv/VarintReader;

    invoke-direct {p1}, Landroidx/media3/extractor/mkv/VarintReader;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->varintReader:Landroidx/media3/extractor/mkv/VarintReader;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    sget-object v0, Landroidx/media3/container/ObuParser;->NAL_START_CODE:[B

    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->nalLength:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->supplementalData:Landroidx/media3/common/util/ParsableByteArray;

    new-array p1, v1, [I

    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    return-void
.end method

.method public static formatSubtitleTimecode(JLjava/lang/String;J)[B
    .locals 7

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkArgument(Z)V

    const-wide v0, 0xd693a400L

    div-long v2, p0, v0

    long-to-int v2, v2

    int-to-long v3, v2

    mul-long/2addr v3, v0

    sub-long/2addr p0, v3

    const-wide/32 v0, 0x3938700

    div-long v3, p0, v0

    long-to-int v3, v3

    int-to-long v4, v3

    mul-long/2addr v4, v0

    sub-long/2addr p0, v4

    const-wide/32 v0, 0xf4240

    div-long v4, p0, v0

    long-to-int v4, v4

    int-to-long v5, v4

    mul-long/2addr v5, v0

    sub-long/2addr p0, v5

    div-long/2addr p0, p3

    long-to-int p0, p0

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p3, p4, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final assertInCues(I)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cueTimesUs:Landroidx/media3/common/util/LongArray;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Landroidx/media3/common/util/LongArray;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Element "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a Cues"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method public final assertInTrackEntry(I)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Element "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a TrackEntry"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method public final commitSampleToOutput(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;JIII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    const/4 v9, 0x1

    if-eqz v2, :cond_0

    move-object v3, v2

    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v8, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Landroidx/media3/extractor/TrackOutput$CryptoData;

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object v1, v3

    move-wide/from16 v3, p2

    invoke-virtual/range {v1 .. v8}, Landroidx/media3/extractor/TrueHdSampleRechunker;->sampleMetadata(Landroidx/media3/extractor/TrackOutput;JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    goto/16 :goto_7

    :cond_0
    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const-string v3, "S_TEXT/UTF8"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x2

    const-string v5, "S_TEXT/WEBVTT"

    const-string v6, "S_TEXT/ASS"

    const/4 v7, 0x0

    if-nez v2, :cond_1

    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    iget v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    const-string v8, "MatroskaExtractor"

    if-le v2, v9, :cond_2

    const-string v2, "Skipping subtitle sample in laced block."

    invoke-static {v8, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-wide v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v10, v12

    if-nez v2, :cond_4

    const-string v2, "Skipping subtitle sample with no duration."

    invoke-static {v8, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    move/from16 v2, p5

    goto/16 :goto_5

    :cond_4
    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    iget-object v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v12, v8, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/4 v14, -0x1

    sparse-switch v13, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    move v14, v4

    goto :goto_1

    :sswitch_1
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    move v14, v9

    goto :goto_1

    :sswitch_2
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    move v14, v7

    :goto_1
    const-wide/16 v2, 0x3e8

    packed-switch v14, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    const-string v5, "%02d:%02d:%02d,%03d"

    invoke-static {v10, v11, v5, v2, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->formatSubtitleTimecode(JLjava/lang/String;J)[B

    move-result-object v2

    const/16 v3, 0x13

    goto :goto_2

    :pswitch_1
    const-string v5, "%02d:%02d:%02d.%03d"

    invoke-static {v10, v11, v5, v2, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->formatSubtitleTimecode(JLjava/lang/String;J)[B

    move-result-object v2

    const/16 v3, 0x19

    goto :goto_2

    :pswitch_2
    const-string v2, "%01d:%02d:%02d:%02d"

    const-wide/16 v5, 0x2710

    invoke-static {v10, v11, v2, v5, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->formatSubtitleTimecode(JLjava/lang/String;J)[B

    move-result-object v2

    const/16 v3, 0x15

    :goto_2
    array-length v5, v2

    invoke-static {v2, v7, v12, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v8, Landroidx/media3/common/util/ParsableByteArray;->position:I

    :goto_3
    iget v3, v8, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    if-ge v2, v3, :cond_9

    iget-object v3, v8, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v3, v3, v2

    if-nez v3, :cond_8

    invoke-virtual {v8, v2}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    goto :goto_4

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media3/extractor/TrackOutput;

    iget v3, v8, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    invoke-interface {v2, v8, v3, v7}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    iget v2, v8, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    add-int v2, p5, v2

    :goto_5
    const/high16 v3, 0x10000000

    and-int v3, p4, v3

    if-eqz v3, :cond_b

    iget v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    iget-object v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->supplementalData:Landroidx/media3/common/util/ParsableByteArray;

    if-le v3, v9, :cond_a

    invoke-virtual {v5, v7}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    goto :goto_6

    :cond_a
    iget v3, v5, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget-object v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v6, v5, v3, v4}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    add-int/2addr v2, v3

    :cond_b
    :goto_6
    move v14, v2

    iget-object v10, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v1, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Landroidx/media3/extractor/TrackOutput$CryptoData;

    move-wide/from16 v11, p2

    move/from16 v13, p4

    move/from16 v15, p6

    move-object/from16 v16, v1

    invoke-interface/range {v10 .. v16}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    :goto_7
    iput-boolean v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->haveOutputSample:Z

    return-void

    :sswitch_data_0
    .sparse-switch
        0x2c0618eb -> :sswitch_2
        0x3e4ca2d8 -> :sswitch_1
        0x54c61e47 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->parseSubtitlesDuringExtraction:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/runtime/Latch;

    iget-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {v0, p1, v1}, Landroidx/compose/runtime/Latch;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    return-void
.end method

.method public final read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 42

    move-object/from16 v0, p0

    const/4 v3, 0x0

    iput-boolean v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->haveOutputSample:Z

    const/4 v5, 0x1

    :goto_0
    const/4 v6, -0x1

    if-eqz v5, :cond_b8

    iget-boolean v7, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->haveOutputSample:Z

    if-nez v7, :cond_b8

    iget-object v7, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->reader:Landroidx/media3/extractor/mkv/DefaultEbmlReader;

    iget-object v8, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->varintReader:Landroidx/media3/extractor/mkv/VarintReader;

    iget-object v9, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    iget-object v5, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->processor:Lcom/google/android/gms/tasks/zzs;

    invoke-static {v5}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;

    const-wide/16 v17, 0x0

    const-wide/16 v20, -0x1

    const v11, 0x1654ae6b

    const v15, 0x1549a966

    const/16 v10, 0x4dbb

    const/16 v13, 0xae

    const/16 v23, 0x8

    const/16 v14, 0xa0

    const/high16 v25, -0x40800000    # -1.0f

    const v3, 0x1c53bb6b

    if-eqz v5, :cond_8a

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v26

    iget-wide v4, v5, Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;->elementEndPosition:J

    cmp-long v4, v26, v4

    if-ltz v4, :cond_8a

    iget-object v4, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->processor:Lcom/google/android/gms/tasks/zzs;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;

    iget v5, v5, Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;->elementId:I

    iget-object v4, v4, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;

    iget-object v7, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget-object v8, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-static {v8}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    const-string v8, "A_OPUS"

    if-eq v5, v14, :cond_84

    const-string/jumbo v9, "video/webm"

    const-string v14, "MatroskaExtractor"

    if-eq v5, v13, :cond_13

    if-eq v5, v10, :cond_11

    const/16 v6, 0x6240

    if-eq v5, v6, :cond_f

    const/16 v6, 0x6d80

    if-eq v5, v6, :cond_d

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v5, v15, :cond_b

    if-eq v5, v11, :cond_9

    if-eq v5, v3, :cond_0

    goto/16 :goto_34

    :cond_0
    iget-boolean v3, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-nez v3, :cond_7

    iget-object v3, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget-object v5, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cueTimesUs:Landroidx/media3/common/util/LongArray;

    iget-object v6, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Landroidx/media3/common/util/LongArray;

    iget-wide v10, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    cmp-long v7, v10, v20

    if-eqz v7, :cond_6

    iget-wide v10, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->durationUs:J

    cmp-long v7, v10, v8

    if-eqz v7, :cond_6

    if-eqz v5, :cond_6

    iget v7, v5, Landroidx/media3/common/util/LongArray;->size:I

    if-eqz v7, :cond_6

    if-eqz v6, :cond_6

    iget v8, v6, Landroidx/media3/common/util/LongArray;->size:I

    if-eq v8, v7, :cond_1

    goto/16 :goto_5

    :cond_1
    new-array v8, v7, [I

    new-array v9, v7, [J

    new-array v10, v7, [J

    new-array v11, v7, [J

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v7, :cond_2

    invoke-virtual {v5, v13}, Landroidx/media3/common/util/LongArray;->get(I)J

    move-result-wide v15

    aput-wide v15, v11, v13

    iget-wide v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    invoke-virtual {v6, v13}, Landroidx/media3/common/util/LongArray;->get(I)J

    move-result-wide v15

    add-long/2addr v15, v0

    aput-wide v15, v9, v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_3
    add-int/lit8 v1, v7, -0x1

    if-ge v0, v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    aget-wide v5, v9, v1

    aget-wide v15, v9, v0

    sub-long/2addr v5, v15

    long-to-int v5, v5

    aput v5, v8, v0

    aget-wide v5, v11, v1

    aget-wide v15, v11, v0

    sub-long/2addr v5, v15

    aput-wide v5, v10, v0

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_4
    if-lez v0, :cond_4

    aget-wide v5, v11, v0

    iget-wide v12, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->durationUs:J

    cmp-long v5, v5, v12

    if-lez v5, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_4
    iget-wide v5, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    iget-wide v12, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->segmentContentSize:J

    add-long/2addr v5, v12

    aget-wide v12, v9, v0

    sub-long/2addr v5, v12

    long-to-int v5, v5

    aput v5, v8, v0

    iget-wide v5, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->durationUs:J

    aget-wide v12, v11, v0

    sub-long/2addr v5, v12

    aput-wide v5, v10, v0

    if-ge v0, v1, :cond_5

    const-string v1, "Discarding trailing cue points with timestamps greater than total duration"

    invoke-static {v14, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    invoke-static {v8, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    invoke-static {v9, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v9

    invoke-static {v10, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v10

    invoke-static {v11, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v11

    :cond_5
    new-instance v0, Landroidx/media3/extractor/ChunkIndex;

    invoke-direct {v0, v8, v9, v10, v11}, Landroidx/media3/extractor/ChunkIndex;-><init>([I[J[J[J)V

    goto :goto_6

    :cond_6
    :goto_5
    new-instance v0, Landroidx/media3/extractor/SeekMap$Unseekable;

    iget-wide v5, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->durationUs:J

    invoke-direct {v0, v5, v6}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    :goto_6
    invoke-interface {v3, v0}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    const/4 v0, 0x1

    iput-boolean v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    :cond_7
    const/4 v0, 0x0

    iput-object v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cueTimesUs:Landroidx/media3/common/util/LongArray;

    iput-object v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Landroidx/media3/common/util/LongArray;

    :cond_8
    :goto_7
    const/4 v0, 0x0

    goto/16 :goto_37

    :cond_9
    const/4 v0, 0x0

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    goto :goto_7

    :cond_a
    const-string v1, "No valid tracks were found"

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_b
    iget-wide v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_c

    const-wide/32 v0, 0xf4240

    iput-wide v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    :cond_c
    iget-wide v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    cmp-long v3, v0, v8

    if-eqz v3, :cond_8

    invoke-virtual {v4, v0, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v0

    iput-wide v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->durationUs:J

    goto :goto_7

    :cond_d
    invoke-virtual {v4, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget-boolean v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz v1, :cond_8

    iget-object v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    if-nez v0, :cond_e

    goto/16 :goto_34

    :cond_e
    const-string v0, "Combining encryption and compression is not supported"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_f
    invoke-virtual {v4, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget-boolean v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz v1, :cond_8

    iget-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Landroidx/media3/extractor/TrackOutput$CryptoData;

    if-eqz v1, :cond_10

    new-instance v3, Landroidx/media3/common/DrmInitData;

    new-instance v4, Landroidx/media3/common/DrmInitData$SchemeData;

    sget-object v5, Landroidx/media3/common/C;->UUID_NIL:Ljava/util/UUID;

    iget-object v1, v1, Landroidx/media3/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v9, v1}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    filled-new-array {v4}, [Landroidx/media3/common/DrmInitData$SchemeData;

    move-result-object v1

    const/4 v4, 0x1

    invoke-direct {v3, v6, v4, v1}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;Z[Landroidx/media3/common/DrmInitData$SchemeData;)V

    iput-object v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Landroidx/media3/common/DrmInitData;

    goto :goto_7

    :cond_10
    const/4 v6, 0x0

    const-string v0, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-static {v6, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_11
    iget v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    if-eq v0, v6, :cond_12

    iget-wide v5, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    cmp-long v1, v5, v20

    if-eqz v1, :cond_12

    if-ne v0, v3, :cond_8

    iput-wide v5, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    goto/16 :goto_7

    :cond_12
    const-string v0, "Mandatory element SeekID or SeekPosition not found"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_13
    iget-object v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    if-eqz v1, :cond_83

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v5, "A_MPEG/L3"

    const-string v10, "A_MPEG/L2"

    const-string v11, "A_VORBIS"

    const-string v12, "A_TRUEHD"

    const-string v13, "A_MS/ACM"

    const-string v15, "V_MPEG4/ISO/SP"

    const-string v6, "V_MPEG4/ISO/AP"

    move/from16 v17, v3

    const/16 v29, 0x14

    sparse-switch v17, :sswitch_data_0

    :goto_8
    const/4 v3, -0x1

    goto/16 :goto_9

    :sswitch_0
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_14

    goto :goto_8

    :cond_14
    const/16 v3, 0x20

    goto/16 :goto_9

    :sswitch_1
    const-string v3, "A_FLAC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    goto :goto_8

    :cond_15
    const/16 v3, 0x1f

    goto/16 :goto_9

    :sswitch_2
    const-string v3, "A_EAC3"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_8

    :cond_16
    const/16 v3, 0x1e

    goto/16 :goto_9

    :sswitch_3
    const-string v3, "V_MPEG2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_8

    :cond_17
    const/16 v3, 0x1d

    goto/16 :goto_9

    :sswitch_4
    const-string v3, "S_TEXT/UTF8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_8

    :cond_18
    const/16 v3, 0x1c

    goto/16 :goto_9

    :sswitch_5
    const-string v3, "S_TEXT/WEBVTT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_8

    :cond_19
    const/16 v3, 0x1b

    goto/16 :goto_9

    :sswitch_6
    const-string v3, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_8

    :cond_1a
    const/16 v3, 0x1a

    goto/16 :goto_9

    :sswitch_7
    const-string v3, "S_TEXT/ASS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_8

    :cond_1b
    const/16 v3, 0x19

    goto/16 :goto_9

    :sswitch_8
    const-string v3, "A_PCM/INT/LIT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    goto :goto_8

    :cond_1c
    const/16 v3, 0x18

    goto/16 :goto_9

    :sswitch_9
    const-string v3, "A_PCM/INT/BIG"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_8

    :cond_1d
    const/16 v3, 0x17

    goto/16 :goto_9

    :sswitch_a
    const-string v3, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    goto/16 :goto_8

    :cond_1e
    const/16 v3, 0x16

    goto/16 :goto_9

    :sswitch_b
    const-string v3, "A_DTS/EXPRESS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    goto/16 :goto_8

    :cond_1f
    const/16 v3, 0x15

    goto/16 :goto_9

    :sswitch_c
    const-string v3, "V_THEORA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    goto/16 :goto_8

    :cond_20
    move/from16 v3, v29

    goto/16 :goto_9

    :sswitch_d
    const-string v3, "S_HDMV/PGS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    goto/16 :goto_8

    :cond_21
    const/16 v3, 0x13

    goto/16 :goto_9

    :sswitch_e
    const-string v3, "V_VP9"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    goto/16 :goto_8

    :cond_22
    const/16 v3, 0x12

    goto/16 :goto_9

    :sswitch_f
    const-string v3, "V_VP8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    goto/16 :goto_8

    :cond_23
    const/16 v3, 0x11

    goto/16 :goto_9

    :sswitch_10
    const-string v3, "V_AV1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    goto/16 :goto_8

    :cond_24
    const/16 v3, 0x10

    goto/16 :goto_9

    :sswitch_11
    const-string v3, "A_DTS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    goto/16 :goto_8

    :cond_25
    const/16 v3, 0xf

    goto/16 :goto_9

    :sswitch_12
    const-string v3, "A_AC3"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    goto/16 :goto_8

    :cond_26
    const/16 v3, 0xe

    goto/16 :goto_9

    :sswitch_13
    const-string v3, "A_AAC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    goto/16 :goto_8

    :cond_27
    const/16 v3, 0xd

    goto/16 :goto_9

    :sswitch_14
    const-string v3, "A_DTS/LOSSLESS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    goto/16 :goto_8

    :cond_28
    const/16 v3, 0xc

    goto/16 :goto_9

    :sswitch_15
    const-string v3, "S_VOBSUB"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    goto/16 :goto_8

    :cond_29
    const/16 v3, 0xb

    goto/16 :goto_9

    :sswitch_16
    const-string v3, "V_MPEG4/ISO/AVC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    goto/16 :goto_8

    :cond_2a
    const/16 v3, 0xa

    goto/16 :goto_9

    :sswitch_17
    const-string v3, "V_MPEG4/ISO/ASP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    goto/16 :goto_8

    :cond_2b
    const/16 v3, 0x9

    goto/16 :goto_9

    :sswitch_18
    const-string v3, "S_DVBSUB"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    goto/16 :goto_8

    :cond_2c
    move/from16 v3, v23

    goto :goto_9

    :sswitch_19
    const-string v3, "V_MS/VFW/FOURCC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    goto/16 :goto_8

    :cond_2d
    const/4 v3, 0x7

    goto :goto_9

    :sswitch_1a
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    goto/16 :goto_8

    :cond_2e
    const/4 v3, 0x6

    goto :goto_9

    :sswitch_1b
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    goto/16 :goto_8

    :cond_2f
    const/4 v3, 0x5

    goto :goto_9

    :sswitch_1c
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    goto/16 :goto_8

    :cond_30
    const/4 v3, 0x4

    goto :goto_9

    :sswitch_1d
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    goto/16 :goto_8

    :cond_31
    const/4 v3, 0x3

    goto :goto_9

    :sswitch_1e
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    goto/16 :goto_8

    :cond_32
    const/4 v3, 0x2

    goto :goto_9

    :sswitch_1f
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    goto/16 :goto_8

    :cond_33
    const/4 v3, 0x1

    goto :goto_9

    :sswitch_20
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    goto/16 :goto_8

    :cond_34
    const/4 v3, 0x0

    :goto_9
    packed-switch v3, :pswitch_data_0

    :goto_a
    const/4 v1, 0x0

    goto/16 :goto_33

    :pswitch_0
    iget-object v3, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    move-object/from16 v32, v9

    iget v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->number:I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v33

    sparse-switch v33, :sswitch_data_1

    :goto_b
    const/4 v15, -0x1

    goto/16 :goto_c

    :sswitch_21
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    goto :goto_b

    :cond_35
    const/16 v15, 0x20

    goto/16 :goto_c

    :sswitch_22
    const-string v5, "A_FLAC"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    goto :goto_b

    :cond_36
    const/16 v15, 0x1f

    goto/16 :goto_c

    :sswitch_23
    const-string v5, "A_EAC3"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    goto :goto_b

    :cond_37
    const/16 v15, 0x1e

    goto/16 :goto_c

    :sswitch_24
    const-string v5, "V_MPEG2"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_38

    goto :goto_b

    :cond_38
    const/16 v15, 0x1d

    goto/16 :goto_c

    :sswitch_25
    const-string v5, "S_TEXT/UTF8"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39

    goto :goto_b

    :cond_39
    const/16 v15, 0x1c

    goto/16 :goto_c

    :sswitch_26
    const-string v5, "S_TEXT/WEBVTT"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3a

    goto :goto_b

    :cond_3a
    const/16 v15, 0x1b

    goto/16 :goto_c

    :sswitch_27
    const-string v5, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3b

    goto :goto_b

    :cond_3b
    const/16 v15, 0x1a

    goto/16 :goto_c

    :sswitch_28
    const-string v5, "S_TEXT/ASS"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c

    goto :goto_b

    :cond_3c
    const/16 v15, 0x19

    goto/16 :goto_c

    :sswitch_29
    const-string v5, "A_PCM/INT/LIT"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    goto :goto_b

    :cond_3d
    const/16 v15, 0x18

    goto/16 :goto_c

    :sswitch_2a
    const-string v5, "A_PCM/INT/BIG"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3e

    goto :goto_b

    :cond_3e
    const/16 v15, 0x17

    goto/16 :goto_c

    :sswitch_2b
    const-string v5, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3f

    goto/16 :goto_b

    :cond_3f
    const/16 v15, 0x16

    goto/16 :goto_c

    :sswitch_2c
    const-string v5, "A_DTS/EXPRESS"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_40

    goto/16 :goto_b

    :cond_40
    const/16 v15, 0x15

    goto/16 :goto_c

    :sswitch_2d
    const-string v5, "V_THEORA"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_41

    goto/16 :goto_b

    :cond_41
    move/from16 v15, v29

    goto/16 :goto_c

    :sswitch_2e
    const-string v5, "S_HDMV/PGS"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_42

    goto/16 :goto_b

    :cond_42
    const/16 v15, 0x13

    goto/16 :goto_c

    :sswitch_2f
    const-string v5, "V_VP9"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_43

    goto/16 :goto_b

    :cond_43
    const/16 v15, 0x12

    goto/16 :goto_c

    :sswitch_30
    const-string v5, "V_VP8"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_44

    goto/16 :goto_b

    :cond_44
    const/16 v15, 0x11

    goto/16 :goto_c

    :sswitch_31
    const-string v5, "V_AV1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_45

    goto/16 :goto_b

    :cond_45
    const/16 v15, 0x10

    goto/16 :goto_c

    :sswitch_32
    const-string v5, "A_DTS"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_46

    goto/16 :goto_b

    :cond_46
    const/16 v15, 0xf

    goto/16 :goto_c

    :sswitch_33
    const-string v5, "A_AC3"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_47

    goto/16 :goto_b

    :cond_47
    const/16 v15, 0xe

    goto/16 :goto_c

    :sswitch_34
    const-string v5, "A_AAC"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_48

    goto/16 :goto_b

    :cond_48
    const/16 v15, 0xd

    goto/16 :goto_c

    :sswitch_35
    const-string v5, "A_DTS/LOSSLESS"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    goto/16 :goto_b

    :cond_49
    const/16 v15, 0xc

    goto/16 :goto_c

    :sswitch_36
    const-string v5, "S_VOBSUB"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4a

    goto/16 :goto_b

    :cond_4a
    const/16 v15, 0xb

    goto/16 :goto_c

    :sswitch_37
    const-string v5, "V_MPEG4/ISO/AVC"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4b

    goto/16 :goto_b

    :cond_4b
    const/16 v15, 0xa

    goto/16 :goto_c

    :sswitch_38
    const-string v5, "V_MPEG4/ISO/ASP"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4c

    goto/16 :goto_b

    :cond_4c
    const/16 v15, 0x9

    goto/16 :goto_c

    :sswitch_39
    const-string v5, "S_DVBSUB"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4d

    goto/16 :goto_b

    :cond_4d
    move/from16 v15, v23

    goto :goto_c

    :sswitch_3a
    const-string v5, "V_MS/VFW/FOURCC"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4e

    goto/16 :goto_b

    :cond_4e
    const/4 v15, 0x7

    goto :goto_c

    :sswitch_3b
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4f

    goto/16 :goto_b

    :cond_4f
    const/4 v15, 0x6

    goto :goto_c

    :sswitch_3c
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_50

    goto/16 :goto_b

    :cond_50
    const/4 v15, 0x5

    goto :goto_c

    :sswitch_3d
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_51

    goto/16 :goto_b

    :cond_51
    const/4 v15, 0x4

    goto :goto_c

    :sswitch_3e
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_52

    goto/16 :goto_b

    :cond_52
    const/4 v15, 0x3

    goto :goto_c

    :sswitch_3f
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_53

    goto/16 :goto_b

    :cond_53
    const/4 v15, 0x2

    goto :goto_c

    :sswitch_40
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_54

    goto/16 :goto_b

    :cond_54
    const/4 v15, 0x1

    goto :goto_c

    :sswitch_41
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_55

    goto/16 :goto_b

    :cond_55
    const/4 v15, 0x0

    :goto_c
    const-string v6, "application/dvbsubs"

    const-string v8, "application/vobsub"

    const-string v10, "application/pgs"

    const-string/jumbo v11, "video/x-unknown"

    const-string/jumbo v12, "text/x-ssa"

    const-string/jumbo v13, "text/vtt"

    const-string v5, "application/x-subrip"

    move/from16 v34, v9

    const-string v9, ". Setting mimeType to audio/x-unknown"

    const-string v35, "audio/raw"

    const-string v36, "audio/x-unknown"

    packed-switch v15, :pswitch_data_1

    const-string v0, "Unrecognized codec identifier."

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :pswitch_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v9, 0x3

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v23 .. v23}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    iget-wide v14, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    invoke-virtual {v9, v14, v15}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v23 .. v23}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    iget-wide v14, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    invoke-virtual {v9, v14, v15}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v11, "audio/opus"

    const/16 v9, 0x1680

    move-object/from16 v29, v4

    move v4, v9

    const/4 v2, 0x0

    :goto_d
    move-object v9, v1

    const/4 v1, -0x1

    goto/16 :goto_26

    :pswitch_2
    invoke-virtual {v0, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v11, "audio/flac"

    :goto_e
    move-object v9, v1

    move-object/from16 v29, v4

    :goto_f
    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_10
    const/4 v4, -0x1

    goto/16 :goto_26

    :pswitch_3
    const-string v11, "audio/eac3"

    :goto_11
    :pswitch_4
    move-object/from16 v29, v4

    :goto_12
    const/4 v1, -0x1

    :goto_13
    const/4 v2, 0x0

    const/4 v4, -0x1

    :goto_14
    const/4 v9, 0x0

    goto/16 :goto_26

    :pswitch_5
    const-string/jumbo v11, "video/mpeg2"

    goto :goto_11

    :pswitch_6
    move-object/from16 v29, v4

    move-object v11, v5

    goto :goto_12

    :pswitch_7
    move-object/from16 v29, v4

    move-object v11, v13

    goto :goto_12

    :pswitch_8
    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v1, v9}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-static {v1, v9, v11}, Landroidx/media3/extractor/HevcConfig;->parseImpl(Landroidx/media3/common/util/ParsableByteArray;ZLandroidx/work/WorkQuery;)Landroidx/media3/extractor/HevcConfig;

    move-result-object v1

    iget-object v9, v1, Landroidx/media3/extractor/HevcConfig;->initializationData:Ljava/util/List;

    iget v11, v1, Landroidx/media3/extractor/HevcConfig;->nalUnitLengthFieldLength:I

    iput v11, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    iget-object v1, v1, Landroidx/media3/extractor/HevcConfig;->codecs:Ljava/lang/String;

    const-string/jumbo v11, "video/hevc"

    :goto_15
    move-object v2, v1

    move-object/from16 v29, v4

    :goto_16
    const/4 v1, -0x1

    goto :goto_10

    :pswitch_9
    sget-object v9, Landroidx/media3/extractor/mkv/MatroskaExtractor;->SSA_DIALOGUE_FORMAT:[B

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v9, v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v1

    move-object v9, v1

    move-object/from16 v29, v4

    move-object v11, v12

    goto :goto_f

    :pswitch_a
    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-static {v1}, Landroidx/media3/common/util/Util;->getPcmEncoding(I)I

    move-result v1

    if-nez v1, :cond_56

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v11, "Unsupported little endian PCM bit depth: "

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_17
    move-object/from16 v29, v4

    :goto_18
    move-object/from16 v11, v36

    goto :goto_12

    :cond_56
    :goto_19
    move-object/from16 v29, v4

    :cond_57
    move-object/from16 v11, v35

    goto :goto_13

    :pswitch_b
    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    move/from16 v11, v23

    if-ne v1, v11, :cond_58

    move-object/from16 v29, v4

    move-object/from16 v11, v35

    const/4 v1, 0x3

    goto :goto_13

    :cond_58
    const/16 v11, 0x10

    if-ne v1, v11, :cond_59

    const/high16 v1, 0x10000000

    goto :goto_19

    :cond_59
    const/16 v11, 0x18

    if-ne v1, v11, :cond_5a

    const/high16 v1, 0x50000000

    goto :goto_19

    :cond_5a
    const/16 v11, 0x20

    if-ne v1, v11, :cond_5b

    const/high16 v1, 0x60000000

    goto :goto_19

    :cond_5b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v11, "Unsupported big endian PCM bit depth: "

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :pswitch_c
    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    const/16 v11, 0x20

    if-ne v1, v11, :cond_5c

    move-object/from16 v29, v4

    move-object/from16 v11, v35

    const/4 v1, 0x4

    goto/16 :goto_13

    :cond_5c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v11, "Unsupported floating point PCM bit depth: "

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :pswitch_d
    move-object/from16 v29, v4

    move-object v11, v10

    goto/16 :goto_12

    :pswitch_e
    iget-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    if-nez v1, :cond_5d

    const/4 v1, 0x0

    goto :goto_1a

    :cond_5d
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v1

    :goto_1a
    const-string/jumbo v11, "video/x-vnd.on2.vp9"

    goto/16 :goto_e

    :pswitch_f
    const-string/jumbo v11, "video/x-vnd.on2.vp8"

    goto/16 :goto_11

    :pswitch_10
    iget-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    if-nez v1, :cond_5e

    const/4 v1, 0x0

    goto :goto_1b

    :cond_5e
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v1

    :goto_1b
    const-string/jumbo v11, "video/av01"

    goto/16 :goto_e

    :pswitch_11
    const-string v11, "audio/vnd.dts"

    goto/16 :goto_11

    :pswitch_12
    const-string v11, "audio/ac3"

    goto/16 :goto_11

    :pswitch_13
    invoke-virtual {v0, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    new-instance v11, Landroidx/media3/extractor/VorbisBitArray;

    array-length v14, v9

    invoke-direct {v11, v14, v9}, Landroidx/media3/extractor/VorbisBitArray;-><init>(I[B)V

    const/4 v9, 0x0

    invoke-static {v11, v9}, Landroidx/media3/extractor/AacUtil;->parseAudioSpecificConfig(Landroidx/media3/extractor/VorbisBitArray;Z)Landroidx/media3/extractor/AacUtil$Config;

    move-result-object v11

    iget v9, v11, Landroidx/media3/extractor/AacUtil$Config;->sampleRateHz:I

    iput v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    iget v9, v11, Landroidx/media3/extractor/AacUtil$Config;->channelCount:I

    iput v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    iget-object v9, v11, Landroidx/media3/extractor/AacUtil$Config;->codecs:Ljava/lang/String;

    const-string v11, "audio/mp4a-latm"

    move-object/from16 v29, v4

    move-object v2, v9

    const/4 v4, -0x1

    goto/16 :goto_d

    :pswitch_14
    const-string v11, "audio/vnd.dts.hd"

    goto/16 :goto_11

    :pswitch_15
    invoke-virtual {v0, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v1

    move-object v9, v1

    move-object/from16 v29, v4

    move-object v11, v8

    goto/16 :goto_f

    :pswitch_16
    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v1, v9}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-static {v1}, Landroidx/media3/extractor/AvcConfig;->parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/AvcConfig;

    move-result-object v1

    iget-object v9, v1, Landroidx/media3/extractor/AvcConfig;->initializationData:Ljava/util/ArrayList;

    iget v11, v1, Landroidx/media3/extractor/AvcConfig;->nalUnitLengthFieldLength:I

    iput v11, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    iget-object v1, v1, Landroidx/media3/extractor/AvcConfig;->codecs:Ljava/lang/String;

    const-string/jumbo v11, "video/avc"

    goto/16 :goto_15

    :pswitch_17
    const/4 v15, 0x4

    new-array v9, v15, [B

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v11, 0x0

    invoke-static {v1, v11, v9, v11, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v9}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v1

    move-object v9, v1

    move-object/from16 v29, v4

    move-object v11, v6

    goto/16 :goto_f

    :pswitch_18
    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v1, v9}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    const/16 v9, 0x10

    :try_start_0
    invoke-virtual {v1, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v18

    const-wide/32 v22, 0x58564944

    cmp-long v9, v18, v22

    if-nez v9, :cond_5f

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v9, "video/divx"
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v11, 0x0

    :try_start_1
    invoke-direct {v1, v9, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1c
    const/4 v9, 0x0

    goto/16 :goto_1e

    :catch_0
    move-object v9, v11

    goto/16 :goto_1f

    :catch_1
    const/4 v9, 0x0

    goto/16 :goto_1f

    :cond_5f
    const-wide/32 v22, 0x33363248

    cmp-long v9, v18, v22

    if-nez v9, :cond_60

    :try_start_2
    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v9, "video/3gpp"
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v11, 0x0

    :try_start_3
    invoke-direct {v1, v9, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1c

    :cond_60
    const-wide/32 v22, 0x31435657

    cmp-long v9, v18, v22

    if-nez v9, :cond_64

    :try_start_4
    iget v9, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v9, v9, 0x14

    iget-object v1, v1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    :goto_1d
    array-length v11, v1

    const/4 v15, 0x4

    sub-int/2addr v11, v15

    if-ge v9, v11, :cond_63

    aget-byte v11, v1, v9

    if-nez v11, :cond_61

    add-int/lit8 v11, v9, 0x1

    aget-byte v11, v1, v11

    if-nez v11, :cond_61

    add-int/lit8 v11, v9, 0x2

    aget-byte v11, v1, v11

    const/4 v14, 0x1

    if-ne v11, v14, :cond_61

    add-int/lit8 v11, v9, 0x3

    aget-byte v11, v1, v11

    const/16 v14, 0xf

    if-ne v11, v14, :cond_62

    array-length v11, v1

    invoke-static {v1, v9, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    new-instance v9, Landroid/util/Pair;

    const-string/jumbo v11, "video/wvc1"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v9, v11, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v9

    goto :goto_1c

    :cond_61
    const/16 v14, 0xf

    :cond_62
    add-int/lit8 v9, v9, 0x1

    goto :goto_1d

    :cond_63
    const-string v0, "Failed to find FourCC VC1 initialization data"
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v1, 0x0

    :try_start_5
    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_2
    move-object v9, v1

    goto :goto_1f

    :cond_64
    const-string v1, "Unknown FourCC. Setting mimeType to video/x-unknown"

    invoke-static {v14, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/util/Pair;

    const/4 v9, 0x0

    invoke-direct {v1, v11, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1e
    iget-object v11, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v26, v1

    check-cast v26, Ljava/util/List;

    move-object/from16 v29, v4

    move-object v2, v9

    move-object/from16 v9, v26

    goto/16 :goto_16

    :goto_1f
    const-string v0, "Error parsing FourCC private data"

    invoke-static {v9, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :pswitch_19
    const-string v11, "audio/mpeg"

    :goto_20
    move-object/from16 v29, v4

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/16 v4, 0x1000

    goto/16 :goto_14

    :pswitch_1a
    const-string v11, "audio/mpeg-L2"

    goto :goto_20

    :pswitch_1b
    invoke-virtual {v0, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v1

    const-string v9, "Error parsing vorbis codec private"

    const/16 v24, 0x0

    :try_start_7
    aget-byte v11, v1, v24

    const/4 v14, 0x2

    if-ne v11, v14, :cond_6a

    const/4 v11, 0x0

    const/4 v14, 0x1

    :goto_21
    aget-byte v15, v1, v14

    move/from16 v17, v14

    const/16 v14, 0xff

    and-int/2addr v15, v14

    if-ne v15, v14, :cond_65

    add-int/lit16 v11, v11, 0xff

    add-int/lit8 v14, v17, 0x1

    goto :goto_21

    :cond_65
    add-int/lit8 v17, v17, 0x1

    add-int/2addr v11, v15

    const/4 v15, 0x0

    :goto_22
    aget-byte v2, v1, v17

    and-int/2addr v2, v14

    if-ne v2, v14, :cond_66

    add-int/lit16 v15, v15, 0xff

    add-int/lit8 v17, v17, 0x1

    goto :goto_22

    :cond_66
    add-int/lit8 v14, v17, 0x1

    add-int/2addr v15, v2

    aget-byte v2, v1, v14

    move/from16 v17, v15

    const/4 v15, 0x1

    if-ne v2, v15, :cond_69

    new-array v2, v11, [B

    const/4 v15, 0x0

    invoke-static {v1, v14, v2, v15, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v14, v11

    aget-byte v11, v1, v14

    const/4 v15, 0x3

    if-ne v11, v15, :cond_68

    add-int v14, v14, v17

    aget-byte v11, v1, v14

    const/4 v15, 0x5

    if-ne v11, v15, :cond_67

    array-length v11, v1

    sub-int/2addr v11, v14

    new-array v11, v11, [B

    array-length v15, v1

    sub-int/2addr v15, v14

    move-object/from16 v29, v4

    const/4 v4, 0x0

    invoke-static {v1, v14, v11, v4, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljava/util/ArrayList;

    const/4 v14, 0x2

    invoke-direct {v1, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_3

    const-string v11, "audio/vorbis"

    const/16 v2, 0x2000

    move-object v9, v1

    move v4, v2

    const/4 v1, -0x1

    const/4 v2, 0x0

    goto/16 :goto_26

    :catch_3
    const/4 v1, 0x0

    goto :goto_23

    :cond_67
    const/4 v1, 0x0

    :try_start_8
    invoke-static {v1, v9}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_68
    const/4 v1, 0x0

    invoke-static {v1, v9}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_69
    const/4 v1, 0x0

    invoke-static {v1, v9}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_6a
    const/4 v1, 0x0

    invoke-static {v1, v9}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    :goto_23
    invoke-static {v1, v9}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :pswitch_1c
    move-object/from16 v29, v4

    new-instance v1, Landroidx/media3/extractor/TrueHdSampleRechunker;

    invoke-direct {v1}, Landroidx/media3/extractor/TrueHdSampleRechunker;-><init>()V

    iput-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    const-string v11, "audio/true-hd"

    goto/16 :goto_12

    :pswitch_1d
    move-object/from16 v29, v4

    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    :try_start_9
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v2

    const/4 v15, 0x1

    if-ne v2, v15, :cond_6b

    goto :goto_24

    :cond_6b
    const v4, 0xfffe

    if-ne v2, v4, :cond_6c

    const/16 v11, 0x18

    invoke-virtual {v1, v11}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v17

    sget-object v2, Landroidx/media3/extractor/mkv/MatroskaExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v22

    cmp-long v4, v17, v22

    if-nez v4, :cond_6c

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v17

    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_5

    cmp-long v1, v17, v1

    if-nez v1, :cond_6c

    :goto_24
    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-static {v1}, Landroidx/media3/common/util/Util;->getPcmEncoding(I)I

    move-result v1

    if-nez v1, :cond_57

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported PCM bit depth: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_6c
    const-string v1, "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown"

    invoke-static {v14, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18

    :catch_5
    const-string v0, "Error parsing MS/ACM codec private"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :pswitch_1e
    move-object/from16 v29, v4

    iget-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    if-nez v1, :cond_6d

    const/4 v1, 0x0

    goto :goto_25

    :cond_6d
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_25
    const-string/jumbo v11, "video/mp4v-es"

    move-object v9, v1

    goto/16 :goto_f

    :goto_26
    iget-object v14, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->dolbyVisionConfigBytes:[B

    if-eqz v14, :cond_6e

    new-instance v14, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v15, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->dolbyVisionConfigBytes:[B

    invoke-direct {v14, v15}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-static {v14}, Lcom/google/common/base/Joiner;->parse(Landroidx/media3/common/util/ParsableByteArray;)Lcom/google/common/base/Joiner;

    move-result-object v14

    if-eqz v14, :cond_6e

    iget-object v2, v14, Lcom/google/common/base/Joiner;->separator:Ljava/lang/String;

    const-string/jumbo v11, "video/dolby-vision"

    :cond_6e
    iget-boolean v14, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    iget-boolean v15, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->flagForced:Z

    if-eqz v15, :cond_6f

    const/4 v15, 0x2

    goto :goto_27

    :cond_6f
    const/4 v15, 0x0

    :goto_27
    or-int/2addr v14, v15

    new-instance v15, Landroidx/media3/common/Format$Builder;

    invoke-direct {v15}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-static {v11}, Landroidx/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v17

    move-object/from16 v22, v7

    sget-object v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->TRACK_NAME_TO_ROTATION_DEGREES:Ljava/util/Map;

    if-eqz v17, :cond_70

    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    iput v5, v15, Landroidx/media3/common/Format$Builder;->channelCount:I

    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    iput v5, v15, Landroidx/media3/common/Format$Builder;->sampleRate:I

    iput v1, v15, Landroidx/media3/common/Format$Builder;->pcmEncoding:I

    const/4 v1, 0x1

    goto/16 :goto_31

    :cond_70
    invoke-static {v11}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7e

    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    if-nez v1, :cond_73

    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_71

    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->width:I

    :cond_71
    iput v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    if-ne v1, v5, :cond_72

    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->height:I

    :cond_72
    iput v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    goto :goto_28

    :cond_73
    const/4 v5, -0x1

    :goto_28
    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    if-eq v1, v5, :cond_74

    iget v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    if-eq v6, v5, :cond_74

    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->height:I

    mul-int/2addr v5, v1

    int-to-float v1, v5

    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->width:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v1, v5

    goto :goto_29

    :cond_74
    move/from16 v1, v25

    :goto_29
    iget-boolean v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    if-eqz v5, :cond_77

    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    cmpl-float v5, v5, v25

    if-eqz v5, :cond_76

    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    cmpl-float v5, v5, v25

    if-eqz v5, :cond_76

    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    cmpl-float v5, v5, v25

    if-eqz v5, :cond_76

    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    cmpl-float v5, v5, v25

    if-eqz v5, :cond_76

    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    cmpl-float v5, v5, v25

    if-eqz v5, :cond_76

    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    cmpl-float v5, v5, v25

    if-eqz v5, :cond_76

    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    cmpl-float v5, v5, v25

    if-eqz v5, :cond_76

    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    cmpl-float v5, v5, v25

    if-eqz v5, :cond_76

    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    cmpl-float v5, v5, v25

    if-eqz v5, :cond_76

    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    cmpl-float v5, v5, v25

    if-nez v5, :cond_75

    goto/16 :goto_2a

    :cond_75
    const/16 v5, 0x19

    new-array v5, v5, [B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    const v10, 0x47435000    # 50000.0f

    mul-float/2addr v8, v10

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v8, v12

    float-to-int v8, v8

    int-to-short v8, v8

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    mul-float/2addr v8, v10

    add-float/2addr v8, v12

    float-to-int v8, v8

    int-to-short v8, v8

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    mul-float/2addr v8, v10

    add-float/2addr v8, v12

    float-to-int v8, v8

    int-to-short v8, v8

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    mul-float/2addr v8, v10

    add-float/2addr v8, v12

    float-to-int v8, v8

    int-to-short v8, v8

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    mul-float/2addr v8, v10

    add-float/2addr v8, v12

    float-to-int v8, v8

    int-to-short v8, v8

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    mul-float/2addr v8, v10

    add-float/2addr v8, v12

    float-to-int v8, v8

    int-to-short v8, v8

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    mul-float/2addr v8, v10

    add-float/2addr v8, v12

    float-to-int v8, v8

    int-to-short v8, v8

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    mul-float/2addr v8, v10

    add-float/2addr v8, v12

    float-to-int v8, v8

    int-to-short v8, v8

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    add-float/2addr v8, v12

    float-to-int v8, v8

    int-to-short v8, v8

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    add-float/2addr v8, v12

    float-to-int v8, v8

    int-to-short v8, v8

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    int-to-short v8, v8

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    int-to-short v8, v8

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v41, v5

    goto :goto_2b

    :cond_76
    :goto_2a
    const/16 v41, 0x0

    :goto_2b
    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    iget v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    iget v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->bitsPerChannel:I

    new-instance v35, Landroidx/media3/common/ColorInfo;

    move/from16 v40, v10

    move/from16 v36, v5

    move/from16 v37, v6

    move/from16 v38, v8

    move/from16 v39, v10

    invoke-direct/range {v35 .. v41}, Landroidx/media3/common/ColorInfo;-><init>(IIIII[B)V

    move-object/from16 v5, v35

    goto :goto_2c

    :cond_77
    const/4 v5, 0x0

    :goto_2c
    iget-object v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    if-eqz v6, :cond_78

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    iget-object v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_2d

    :cond_78
    const/4 v6, -0x1

    :goto_2d
    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    if-nez v8, :cond_7d

    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseYaw:F

    const/4 v10, 0x0

    invoke-static {v8, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_7d

    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    invoke-static {v8, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_7d

    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    invoke-static {v8, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_79

    const/4 v6, 0x0

    goto :goto_2f

    :cond_79
    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    const/high16 v10, 0x42b40000    # 90.0f

    invoke-static {v8, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_7a

    const/16 v6, 0x5a

    goto :goto_2f

    :cond_7a
    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    const/high16 v10, -0x3ccc0000    # -180.0f

    invoke-static {v8, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-eqz v8, :cond_7c

    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    const/high16 v10, 0x43340000    # 180.0f

    invoke-static {v8, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_7b

    goto :goto_2e

    :cond_7b
    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    const/high16 v10, -0x3d4c0000    # -90.0f

    invoke-static {v8, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_7d

    const/16 v6, 0x10e

    goto :goto_2f

    :cond_7c
    :goto_2e
    const/16 v6, 0xb4

    :cond_7d
    :goto_2f
    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->width:I

    iput v8, v15, Landroidx/media3/common/Format$Builder;->width:I

    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->height:I

    iput v8, v15, Landroidx/media3/common/Format$Builder;->height:I

    iput v1, v15, Landroidx/media3/common/Format$Builder;->pixelWidthHeightRatio:F

    iput v6, v15, Landroidx/media3/common/Format$Builder;->rotationDegrees:I

    iget-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    iput-object v1, v15, Landroidx/media3/common/Format$Builder;->projectionData:[B

    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    iput v1, v15, Landroidx/media3/common/Format$Builder;->stereoMode:I

    iput-object v5, v15, Landroidx/media3/common/Format$Builder;->colorInfo:Landroidx/media3/common/ColorInfo;

    const/4 v1, 0x2

    goto :goto_31

    :cond_7e
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_80

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_80

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_80

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_80

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_80

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    goto :goto_30

    :cond_7f
    const-string v0, "Unexpected MIME type."

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_80
    :goto_30
    const/4 v1, 0x3

    :goto_31
    iget-object v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    if-eqz v5, :cond_81

    invoke-interface {v7, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_81

    iget-object v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    iput-object v5, v15, Landroidx/media3/common/Format$Builder;->label:Ljava/lang/String;

    :cond_81
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v15, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    iget-boolean v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->isWebm:Z

    if-eqz v5, :cond_82

    goto :goto_32

    :cond_82
    const-string/jumbo v5, "video/x-matroska"

    move-object/from16 v32, v5

    :goto_32
    invoke-static/range {v32 .. v32}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v15, Landroidx/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    invoke-static {v11}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v15, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iput v4, v15, Landroidx/media3/common/Format$Builder;->maxInputSize:I

    iget-object v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    iput-object v4, v15, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    iput v14, v15, Landroidx/media3/common/Format$Builder;->selectionFlags:I

    iput-object v9, v15, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    iput-object v2, v15, Landroidx/media3/common/Format$Builder;->codecs:Ljava/lang/String;

    iget-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Landroidx/media3/common/DrmInitData;

    iput-object v2, v15, Landroidx/media3/common/Format$Builder;->drmInitData:Landroidx/media3/common/DrmInitData;

    new-instance v2, Landroidx/media3/common/Format;

    invoke-direct {v2, v15}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iget v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->number:I

    invoke-interface {v3, v4, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v1, v2}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->number:I

    move-object/from16 v2, v22

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v4, v29

    goto/16 :goto_a

    :goto_33
    iput-object v1, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    goto/16 :goto_7

    :cond_83
    const/4 v1, 0x0

    const-string v0, "CodecId is missing in TrackEntry element"

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_84
    move-object v2, v7

    iget v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    const/4 v14, 0x2

    if-eq v0, v14, :cond_85

    :goto_34
    goto/16 :goto_7

    :cond_85
    iget v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockGroupDiscardPaddingNs:J

    cmp-long v1, v1, v17

    if-lez v1, :cond_86

    iget-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86

    iget-object v1, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->supplementalData:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v23, 0x8

    invoke-static/range {v23 .. v23}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-wide v5, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockGroupDiscardPaddingNs:J

    invoke-virtual {v2, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v3, v2

    invoke-virtual {v1, v3, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset(I[B)V

    :cond_86
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_35
    iget v3, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-ge v1, v3, :cond_87

    iget-object v3, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_87
    const/4 v1, 0x0

    :goto_36
    iget v3, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-ge v1, v3, :cond_89

    iget-wide v5, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    iget v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->defaultSampleDurationNs:I

    mul-int/2addr v3, v1

    const/16 v7, 0x3e8

    div-int/2addr v3, v7

    int-to-long v7, v3

    add-long v31, v5, v7

    iget v3, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockFlags:I

    if-nez v1, :cond_88

    iget-boolean v5, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockHasReferenceBlock:Z

    if-nez v5, :cond_88

    or-int/lit8 v3, v3, 0x1

    :cond_88
    move/from16 v33, v3

    iget-object v3, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v34, v3, v1

    sub-int v35, v2, v34

    move-object/from16 v30, v0

    move-object/from16 v29, v4

    invoke-virtual/range {v29 .. v35}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->commitSampleToOutput(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;JIII)V

    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v35

    goto :goto_36

    :cond_89
    const/4 v0, 0x0

    iput v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    :goto_37
    move-object/from16 v1, p1

    move v4, v0

    :goto_38
    const/4 v5, 0x1

    goto/16 :goto_4f

    :cond_8a
    const/4 v0, 0x0

    iget v1, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementState:I

    const v2, 0x1f43b675

    if-nez v1, :cond_91

    move-object/from16 v1, p1

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-virtual {v8, v1, v5, v0, v4}, Landroidx/media3/extractor/mkv/VarintReader;->readUnsignedVarint(Landroidx/media3/extractor/ExtractorInput;ZZI)J

    move-result-wide v29

    const-wide/16 v5, -0x2

    cmp-long v5, v29, v5

    if-nez v5, :cond_8f

    iget-object v5, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->scratch:[B

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    :goto_39
    invoke-interface {v1, v0, v4, v5}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    aget-byte v4, v5, v0

    const/4 v0, 0x0

    :goto_3a
    const/16 v6, 0x8

    if-ge v0, v6, :cond_8c

    sget-object v6, Landroidx/media3/extractor/mkv/VarintReader;->VARINT_LENGTH_MASKS:[J

    aget-wide v29, v6, v0

    int-to-long v13, v4

    and-long v13, v29, v13

    cmp-long v13, v13, v17

    if-eqz v13, :cond_8b

    add-int/lit8 v0, v0, 0x1

    :goto_3b
    const/4 v4, -0x1

    goto :goto_3c

    :cond_8b
    add-int/lit8 v0, v0, 0x1

    const/16 v13, 0xae

    const/16 v14, 0xa0

    goto :goto_3a

    :cond_8c
    const/4 v0, -0x1

    goto :goto_3b

    :goto_3c
    if-eq v0, v4, :cond_8d

    const/4 v4, 0x4

    if-gt v0, v4, :cond_8d

    const/4 v4, 0x0

    invoke-static {v0, v4, v5}, Landroidx/media3/extractor/mkv/VarintReader;->assembleVarint(IZ[B)J

    move-result-wide v13

    long-to-int v4, v13

    iget-object v13, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->processor:Lcom/google/android/gms/tasks/zzs;

    iget-object v13, v13, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    if-eq v4, v15, :cond_8e

    if-eq v4, v2, :cond_8e

    if-eq v4, v3, :cond_8e

    if-ne v4, v11, :cond_8d

    goto :goto_3d

    :cond_8d
    const/4 v14, 0x1

    goto :goto_3f

    :cond_8e
    :goto_3d
    invoke-interface {v1, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    int-to-long v4, v4

    :goto_3e
    const/4 v14, 0x1

    goto :goto_40

    :goto_3f
    invoke-interface {v1, v14}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    const/4 v0, 0x0

    const/4 v4, 0x4

    const/16 v13, 0xae

    const/16 v14, 0xa0

    goto :goto_39

    :cond_8f
    move-wide/from16 v4, v29

    goto :goto_3e

    :goto_40
    cmp-long v0, v4, v20

    if-nez v0, :cond_90

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_4f

    :cond_90
    long-to-int v0, v4

    iput v0, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementId:I

    iput v14, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementState:I

    goto :goto_41

    :cond_91
    move-object/from16 v1, p1

    const/4 v14, 0x1

    :goto_41
    iget v0, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementState:I

    if-ne v0, v14, :cond_92

    const/4 v4, 0x0

    const/16 v11, 0x8

    invoke-virtual {v8, v1, v4, v14, v11}, Landroidx/media3/extractor/mkv/VarintReader;->readUnsignedVarint(Landroidx/media3/extractor/ExtractorInput;ZZI)J

    move-result-wide v12

    iput-wide v12, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    const/4 v14, 0x2

    iput v14, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementState:I

    :cond_92
    iget-object v4, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->processor:Lcom/google/android/gms/tasks/zzs;

    iget v5, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-object v11, v4, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    sparse-switch v5, :sswitch_data_2

    const/4 v11, 0x0

    goto :goto_42

    :sswitch_42
    const/4 v11, 0x5

    goto :goto_42

    :sswitch_43
    const/4 v11, 0x4

    goto :goto_42

    :sswitch_44
    const/4 v11, 0x1

    goto :goto_42

    :sswitch_45
    const/4 v11, 0x3

    goto :goto_42

    :sswitch_46
    const/4 v11, 0x2

    :goto_42
    if-eqz v11, :cond_b7

    const/4 v14, 0x1

    if-eq v11, v14, :cond_a6

    const-wide/16 v2, 0x8

    const/4 v14, 0x2

    if-eq v11, v14, :cond_a4

    const/4 v15, 0x3

    if-eq v11, v15, :cond_9a

    const/4 v15, 0x4

    if-eq v11, v15, :cond_99

    const/4 v0, 0x5

    if-ne v11, v0, :cond_98

    iget-wide v8, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    const-wide/16 v10, 0x4

    cmp-long v0, v8, v10

    if-eqz v0, :cond_94

    cmp-long v0, v8, v2

    if-nez v0, :cond_93

    goto :goto_43

    :cond_93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid float size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_94
    :goto_43
    long-to-int v0, v8

    invoke-virtual {v7, v1, v0}, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->readInteger(Landroidx/media3/extractor/ExtractorInput;I)J

    move-result-wide v2

    const/4 v15, 0x4

    if-ne v0, v15, :cond_95

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    float-to-double v2, v0

    goto :goto_44

    :cond_95
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    :goto_44
    iget-object v0, v4, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;

    const/16 v4, 0xb5

    if-eq v5, v4, :cond_97

    const/16 v4, 0x4489

    if-eq v5, v4, :cond_96

    packed-switch v5, :pswitch_data_2

    packed-switch v5, :pswitch_data_3

    :goto_45
    const/4 v4, 0x0

    goto/16 :goto_46

    :pswitch_1f
    invoke-virtual {v0, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v2, v2

    iput v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    goto :goto_45

    :pswitch_20
    invoke-virtual {v0, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v2, v2

    iput v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    goto :goto_45

    :pswitch_21
    invoke-virtual {v0, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v2, v2

    iput v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseYaw:F

    goto :goto_45

    :pswitch_22
    invoke-virtual {v0, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v2, v2

    iput v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    goto :goto_45

    :pswitch_23
    invoke-virtual {v0, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v2, v2

    iput v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    goto :goto_45

    :pswitch_24
    invoke-virtual {v0, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v2, v2

    iput v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    goto :goto_45

    :pswitch_25
    invoke-virtual {v0, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v2, v2

    iput v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    goto :goto_45

    :pswitch_26
    invoke-virtual {v0, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v2, v2

    iput v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    goto :goto_45

    :pswitch_27
    invoke-virtual {v0, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v2, v2

    iput v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    goto :goto_45

    :pswitch_28
    invoke-virtual {v0, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v2, v2

    iput v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    goto :goto_45

    :pswitch_29
    invoke-virtual {v0, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v2, v2

    iput v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    goto :goto_45

    :pswitch_2a
    invoke-virtual {v0, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v2, v2

    iput v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    goto :goto_45

    :pswitch_2b
    invoke-virtual {v0, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v2, v2

    iput v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    goto :goto_45

    :cond_96
    double-to-long v2, v2

    iput-wide v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    goto :goto_45

    :cond_97
    invoke-virtual {v0, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-int v2, v2

    iput v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    goto/16 :goto_45

    :goto_46
    iput v4, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementState:I

    goto/16 :goto_38

    :cond_98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid element type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_99
    iget-wide v2, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v0, v2

    invoke-virtual {v4, v5, v0, v1}, Lcom/google/android/gms/tasks/zzs;->binaryElement(IILandroidx/media3/extractor/ExtractorInput;)V

    const/4 v9, 0x0

    iput v9, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementState:I

    move v4, v9

    goto/16 :goto_38

    :cond_9a
    const/4 v9, 0x0

    iget-wide v2, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    const-wide/32 v10, 0x7fffffff

    cmp-long v0, v2, v10

    if-gtz v0, :cond_a3

    long-to-int v0, v2

    if-nez v0, :cond_9b

    const-string v0, ""

    goto :goto_48

    :cond_9b
    new-array v2, v0, [B

    invoke-interface {v1, v2, v9, v0}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    :goto_47
    if-lez v0, :cond_9c

    add-int/lit8 v3, v0, -0x1

    aget-byte v3, v2, v3

    if-nez v3, :cond_9c

    add-int/lit8 v0, v0, -0x1

    goto :goto_47

    :cond_9c
    new-instance v3, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v3, v2, v9, v0}, Ljava/lang/String;-><init>([BII)V

    move-object v0, v3

    :goto_48
    iget-object v2, v4, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/extractor/mkv/MatroskaExtractor;

    const/16 v3, 0x86

    if-eq v5, v3, :cond_a2

    const/16 v3, 0x4282

    if-eq v5, v3, :cond_9f

    const/16 v3, 0x536e

    if-eq v5, v3, :cond_9e

    const v3, 0x22b59c

    if-eq v5, v3, :cond_9d

    :goto_49
    const/4 v4, 0x0

    goto :goto_4b

    :cond_9d
    invoke-virtual {v2, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v2, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput-object v0, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    goto :goto_49

    :cond_9e
    invoke-virtual {v2, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v2, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput-object v0, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    goto :goto_49

    :cond_9f
    const-string/jumbo v3, "webm"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a1

    const-string v4, "matroska"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a0

    goto :goto_4a

    :cond_a0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DocType "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not supported"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_a1
    :goto_4a
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor;->isWebm:Z

    goto :goto_49

    :cond_a2
    invoke-virtual {v2, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v2, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput-object v0, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    goto :goto_49

    :goto_4b
    iput v4, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementState:I

    goto/16 :goto_38

    :cond_a3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "String element size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_a4
    iget-wide v8, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    cmp-long v0, v8, v2

    if-gtz v0, :cond_a5

    long-to-int v0, v8

    invoke-virtual {v7, v1, v0}, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->readInteger(Landroidx/media3/extractor/ExtractorInput;I)J

    move-result-wide v2

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/gms/tasks/zzs;->integerElement(IJ)V

    const/4 v4, 0x0

    iput v4, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementState:I

    goto/16 :goto_38

    :cond_a5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid integer size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_a6
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget-wide v11, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    add-long/2addr v11, v4

    new-instance v8, Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;

    iget v13, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementId:I

    invoke-direct {v8, v13, v11, v12}, Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;-><init>(IJ)V

    invoke-virtual {v9, v8}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-object v8, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->processor:Lcom/google/android/gms/tasks/zzs;

    iget v9, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v11, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    iget-object v8, v8, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast v8, Landroidx/media3/extractor/mkv/MatroskaExtractor;

    iget-object v13, v8, Landroidx/media3/extractor/mkv/MatroskaExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-static {v13}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    const/16 v6, 0xa0

    if-eq v9, v6, :cond_b3

    const/16 v0, 0xae

    if-eq v9, v0, :cond_b2

    const/16 v0, 0xbb

    if-eq v9, v0, :cond_b1

    if-eq v9, v10, :cond_b0

    const/16 v0, 0x5035

    if-eq v9, v0, :cond_af

    const/16 v0, 0x55d0

    if-eq v9, v0, :cond_ae

    const v0, 0x18538067

    if-eq v9, v0, :cond_ab

    if-eq v9, v3, :cond_aa

    if-eq v9, v2, :cond_a7

    goto :goto_4c

    :cond_a7
    iget-boolean v0, v8, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-nez v0, :cond_a8

    iget-boolean v0, v8, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekForCuesEnabled:Z

    if-eqz v0, :cond_a9

    iget-wide v2, v8, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    cmp-long v0, v2, v20

    if-eqz v0, :cond_a9

    const/4 v14, 0x1

    iput-boolean v14, v8, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    :cond_a8
    :goto_4c
    const/4 v4, 0x0

    goto/16 :goto_4e

    :cond_a9
    const/4 v14, 0x1

    iget-object v0, v8, Landroidx/media3/extractor/mkv/MatroskaExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v2, Landroidx/media3/extractor/SeekMap$Unseekable;

    iget-wide v3, v8, Landroidx/media3/extractor/mkv/MatroskaExtractor;->durationUs:J

    invoke-direct {v2, v3, v4}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v0, v2}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    iput-boolean v14, v8, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    goto :goto_4c

    :cond_aa
    new-instance v0, Landroidx/media3/common/util/LongArray;

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4}, Landroidx/media3/common/util/LongArray;-><init>(IB)V

    iput-object v0, v8, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cueTimesUs:Landroidx/media3/common/util/LongArray;

    new-instance v0, Landroidx/media3/common/util/LongArray;

    invoke-direct {v0, v4, v4}, Landroidx/media3/common/util/LongArray;-><init>(IB)V

    iput-object v0, v8, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Landroidx/media3/common/util/LongArray;

    goto :goto_4c

    :cond_ab
    iget-wide v2, v8, Landroidx/media3/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    cmp-long v0, v2, v20

    if-eqz v0, :cond_ad

    cmp-long v0, v2, v4

    if-nez v0, :cond_ac

    goto :goto_4d

    :cond_ac
    const-string v0, "Multiple Segment elements not supported"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_ad
    :goto_4d
    iput-wide v4, v8, Landroidx/media3/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    iput-wide v11, v8, Landroidx/media3/extractor/mkv/MatroskaExtractor;->segmentContentSize:J

    goto :goto_4c

    :cond_ae
    invoke-virtual {v8, v9}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v0, v8, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    const/4 v14, 0x1

    iput-boolean v14, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    goto :goto_4c

    :cond_af
    const/4 v14, 0x1

    invoke-virtual {v8, v9}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v0, v8, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput-boolean v14, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    goto :goto_4c

    :cond_b0
    const/4 v4, -0x1

    iput v4, v8, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    move-wide/from16 v2, v20

    iput-wide v2, v8, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    goto :goto_4c

    :cond_b1
    const/4 v9, 0x0

    iput-boolean v9, v8, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    move v4, v9

    goto :goto_4e

    :cond_b2
    const/4 v4, -0x1

    const/4 v9, 0x0

    new-instance v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->width:I

    iput v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->height:I

    iput v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->bitsPerChannel:I

    iput v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    iput v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    iput v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    iput v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    const/4 v10, 0x0

    iput v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseYaw:F

    iput v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    iput v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    const/4 v11, 0x0

    iput-object v11, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    iput v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    iput-boolean v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    iput v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    iput v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    iput v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    const/16 v2, 0x3e8

    iput v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    const/16 v2, 0xc8

    iput v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    move/from16 v2, v25

    iput v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    iput v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    iput v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    iput v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    iput v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    iput v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    iput v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    iput v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    iput v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    iput v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    const/4 v14, 0x1

    iput v14, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    const/4 v4, -0x1

    iput v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    const/16 v2, 0x1f40

    iput v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    move-wide/from16 v2, v17

    iput-wide v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    iput-wide v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    iput-boolean v14, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    const-string v2, "eng"

    iput-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    iput-object v0, v8, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget-boolean v2, v8, Landroidx/media3/extractor/mkv/MatroskaExtractor;->isWebm:Z

    iput-boolean v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->isWebm:Z

    goto/16 :goto_4c

    :cond_b3
    move-wide/from16 v2, v17

    const/4 v4, 0x0

    iput-boolean v4, v8, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockHasReferenceBlock:Z

    iput-wide v2, v8, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockGroupDiscardPaddingNs:J

    :goto_4e
    iput v4, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementState:I

    goto/16 :goto_38

    :goto_4f
    if-eqz v5, :cond_b5

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    if-eqz v6, :cond_b4

    iput-wide v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    iget-wide v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    move-object/from16 v3, p2

    iput-wide v1, v3, Landroidx/media3/extractor/PositionHolder;->position:J

    iput-boolean v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    const/16 v28, 0x1

    return v28

    :cond_b4
    move-object/from16 v3, p2

    const/16 v28, 0x1

    iget-boolean v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-eqz v2, :cond_b6

    iget-wide v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    const-wide/16 v8, -0x1

    cmp-long v2, v6, v8

    if-eqz v2, :cond_b6

    iput-wide v6, v3, Landroidx/media3/extractor/PositionHolder;->position:J

    iput-wide v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    return v28

    :cond_b5
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    :cond_b6
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_b7
    move-object/from16 v0, p0

    move-object/from16 v3, p2

    const/16 v28, 0x1

    iget-wide v4, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v2, v4

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    const/4 v4, 0x0

    iput v4, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementState:I

    move v3, v4

    const/4 v6, -0x1

    goto/16 :goto_1

    :cond_b8
    if-nez v5, :cond_bb

    const/4 v3, 0x0

    :goto_50
    iget-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v3, v2, :cond_ba

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    if-eqz v2, :cond_b9

    iget-object v4, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v1, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Landroidx/media3/extractor/TrackOutput$CryptoData;

    invoke-virtual {v2, v4, v1}, Landroidx/media3/extractor/TrueHdSampleRechunker;->outputPendingSampleMetadata(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/TrackOutput$CryptoData;)V

    :cond_b9
    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    :cond_ba
    const/16 v27, -0x1

    return v27

    :cond_bb
    const/16 v24, 0x0

    return v24

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_20
        -0x7ce7f3b0 -> :sswitch_1f
        -0x76567dc0 -> :sswitch_1e
        -0x6a615338 -> :sswitch_1d
        -0x672350af -> :sswitch_1c
        -0x585f4fce -> :sswitch_1b
        -0x585f4fcd -> :sswitch_1a
        -0x51dc40b2 -> :sswitch_19
        -0x37a9c464 -> :sswitch_18
        -0x2016c535 -> :sswitch_17
        -0x2016c4e5 -> :sswitch_16
        -0x19552dbd -> :sswitch_15
        -0x1538b2ba -> :sswitch_14
        0x3c02325 -> :sswitch_13
        0x3c02353 -> :sswitch_12
        0x3c030c5 -> :sswitch_11
        0x4e81333 -> :sswitch_10
        0x4e86155 -> :sswitch_f
        0x4e86156 -> :sswitch_e
        0x5e8da3e -> :sswitch_d
        0x1a8350d6 -> :sswitch_c
        0x2056f406 -> :sswitch_b
        0x25e26ee2 -> :sswitch_a
        0x2b45174d -> :sswitch_9
        0x2b453ce4 -> :sswitch_8
        0x2c0618eb -> :sswitch_7
        0x32fdf009 -> :sswitch_6
        0x3e4ca2d8 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7ce7f5de -> :sswitch_41
        -0x7ce7f3b0 -> :sswitch_40
        -0x76567dc0 -> :sswitch_3f
        -0x6a615338 -> :sswitch_3e
        -0x672350af -> :sswitch_3d
        -0x585f4fce -> :sswitch_3c
        -0x585f4fcd -> :sswitch_3b
        -0x51dc40b2 -> :sswitch_3a
        -0x37a9c464 -> :sswitch_39
        -0x2016c535 -> :sswitch_38
        -0x2016c4e5 -> :sswitch_37
        -0x19552dbd -> :sswitch_36
        -0x1538b2ba -> :sswitch_35
        0x3c02325 -> :sswitch_34
        0x3c02353 -> :sswitch_33
        0x3c030c5 -> :sswitch_32
        0x4e81333 -> :sswitch_31
        0x4e86155 -> :sswitch_30
        0x4e86156 -> :sswitch_2f
        0x5e8da3e -> :sswitch_2e
        0x1a8350d6 -> :sswitch_2d
        0x2056f406 -> :sswitch_2c
        0x25e26ee2 -> :sswitch_2b
        0x2b45174d -> :sswitch_2a
        0x2b453ce4 -> :sswitch_29
        0x2c0618eb -> :sswitch_28
        0x32fdf009 -> :sswitch_27
        0x3e4ca2d8 -> :sswitch_26
        0x54c61e47 -> :sswitch_25
        0x6bd6c624 -> :sswitch_24
        0x7446132a -> :sswitch_23
        0x7446b0a6 -> :sswitch_22
        0x744ad97d -> :sswitch_21
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_1e
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_4
        :pswitch_11
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x83 -> :sswitch_46
        0x86 -> :sswitch_45
        0x88 -> :sswitch_46
        0x9b -> :sswitch_46
        0x9f -> :sswitch_46
        0xa0 -> :sswitch_44
        0xa1 -> :sswitch_43
        0xa3 -> :sswitch_43
        0xa5 -> :sswitch_43
        0xa6 -> :sswitch_44
        0xae -> :sswitch_44
        0xb0 -> :sswitch_46
        0xb3 -> :sswitch_46
        0xb5 -> :sswitch_42
        0xb7 -> :sswitch_44
        0xba -> :sswitch_46
        0xbb -> :sswitch_44
        0xd7 -> :sswitch_46
        0xe0 -> :sswitch_44
        0xe1 -> :sswitch_44
        0xe7 -> :sswitch_46
        0xee -> :sswitch_46
        0xf1 -> :sswitch_46
        0xfb -> :sswitch_46
        0x41e4 -> :sswitch_44
        0x41e7 -> :sswitch_46
        0x41ed -> :sswitch_43
        0x4254 -> :sswitch_46
        0x4255 -> :sswitch_43
        0x4282 -> :sswitch_45
        0x4285 -> :sswitch_46
        0x42f7 -> :sswitch_46
        0x4489 -> :sswitch_42
        0x47e1 -> :sswitch_46
        0x47e2 -> :sswitch_43
        0x47e7 -> :sswitch_44
        0x47e8 -> :sswitch_46
        0x4dbb -> :sswitch_44
        0x5031 -> :sswitch_46
        0x5032 -> :sswitch_46
        0x5034 -> :sswitch_44
        0x5035 -> :sswitch_44
        0x536e -> :sswitch_45
        0x53ab -> :sswitch_43
        0x53ac -> :sswitch_46
        0x53b8 -> :sswitch_46
        0x54b0 -> :sswitch_46
        0x54b2 -> :sswitch_46
        0x54ba -> :sswitch_46
        0x55aa -> :sswitch_46
        0x55b0 -> :sswitch_44
        0x55b2 -> :sswitch_46
        0x55b9 -> :sswitch_46
        0x55ba -> :sswitch_46
        0x55bb -> :sswitch_46
        0x55bc -> :sswitch_46
        0x55bd -> :sswitch_46
        0x55d0 -> :sswitch_44
        0x55d1 -> :sswitch_42
        0x55d2 -> :sswitch_42
        0x55d3 -> :sswitch_42
        0x55d4 -> :sswitch_42
        0x55d5 -> :sswitch_42
        0x55d6 -> :sswitch_42
        0x55d7 -> :sswitch_42
        0x55d8 -> :sswitch_42
        0x55d9 -> :sswitch_42
        0x55da -> :sswitch_42
        0x55ee -> :sswitch_46
        0x56aa -> :sswitch_46
        0x56bb -> :sswitch_46
        0x6240 -> :sswitch_44
        0x6264 -> :sswitch_46
        0x63a2 -> :sswitch_43
        0x6d80 -> :sswitch_44
        0x75a1 -> :sswitch_44
        0x75a2 -> :sswitch_46
        0x7670 -> :sswitch_44
        0x7671 -> :sswitch_46
        0x7672 -> :sswitch_43
        0x7673 -> :sswitch_42
        0x7674 -> :sswitch_42
        0x7675 -> :sswitch_42
        0x22b59c -> :sswitch_45
        0x23e383 -> :sswitch_46
        0x2ad7b1 -> :sswitch_46
        0x114d9b74 -> :sswitch_44
        0x1549a966 -> :sswitch_44
        0x1654ae6b -> :sswitch_44
        0x18538067 -> :sswitch_44
        0x1a45dfa3 -> :sswitch_44
        0x1c53bb6b -> :sswitch_44
        0x1f43b675 -> :sswitch_44
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x55d1
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7673
        :pswitch_21
        :pswitch_20
        :pswitch_1f
    .end packed-switch
.end method

.method public final readScratch(Landroidx/media3/extractor/ExtractorInput;I)V
    .locals 3

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    iget v0, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    if-lt v0, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    array-length v1, v0

    if-ge v1, p2, :cond_1

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->ensureCapacity(I)V

    :cond_1
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    sub-int v2, p2, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {p0, p2}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    return-void
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public final resetWriteSampleData()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    iput-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    iput-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    iput-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    iput-byte v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    iput-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    return-void
.end method

.method public final scaleTimecodeToUs(J)J
    .locals 7

    iget-wide v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v2, v0

    if-eqz p0, :cond_0

    sget p0, Landroidx/media3/common/util/Util;->SDK_INT:I

    sget-object v6, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-string p0, "Can\'t scale timecode prior to timecodeScale being set."

    const/4 p1, 0x0

    invoke-static {p1, p0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method public final seek(JJ)V
    .locals 0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    iget-object p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->reader:Landroidx/media3/extractor/mkv/DefaultEbmlReader;

    iput p1, p2, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementState:I

    iget-object p3, p2, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->clear()V

    iget-object p2, p2, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->varintReader:Landroidx/media3/extractor/mkv/VarintReader;

    iput p1, p2, Landroidx/media3/extractor/mkv/VarintReader;->state:I

    iput p1, p2, Landroidx/media3/extractor/mkv/VarintReader;->length:I

    iget-object p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->varintReader:Landroidx/media3/extractor/mkv/VarintReader;

    iput p1, p2, Landroidx/media3/extractor/mkv/VarintReader;->state:I

    iput p1, p2, Landroidx/media3/extractor/mkv/VarintReader;->length:I

    invoke-virtual {p0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->resetWriteSampleData()V

    move p2, p1

    :goto_0
    iget-object p3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p4

    if-ge p2, p4, :cond_1

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget-object p3, p3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    if-eqz p3, :cond_0

    iput-boolean p1, p3, Landroidx/media3/extractor/TrueHdSampleRechunker;->foundSyncframe:Z

    iput p1, p3, Landroidx/media3/extractor/TrueHdSampleRechunker;->chunkSampleCount:I

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 14

    new-instance p0, Landroidx/media3/extractor/mkv/Sniffer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(IB)V

    iget-object v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/ParsableByteArray;

    check-cast p1, Landroidx/media3/extractor/DefaultExtractorInput;

    iget-wide v1, p1, Landroidx/media3/extractor/DefaultExtractorInput;->streamLength:J

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    const-wide/16 v4, 0x400

    if-eqz v3, :cond_1

    cmp-long v6, v1, v4

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    move-wide v4, v1

    :cond_1
    :goto_0
    long-to-int v4, v4

    iget-object v5, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {p1, v6, v6, v5, v7}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully(IZ[BI)Z

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    iput v7, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    :goto_1
    const-wide/32 v10, 0x1a45dfa3

    cmp-long v5, v8, v10

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    iget v5, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    add-int/2addr v5, v7

    iput v5, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    if-ne v5, v4, :cond_2

    goto :goto_3

    :cond_2
    iget-object v5, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-virtual {p1, v6, v6, v5, v7}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully(IZ[BI)Z

    const/16 v5, 0x8

    shl-long v7, v8, v5

    const-wide/16 v9, -0x100

    and-long/2addr v7, v9

    iget-object v5, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-long v9, v5

    or-long v8, v7, v9

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/Sniffer;->readUint(Landroidx/media3/extractor/DefaultExtractorInput;)J

    move-result-wide v4

    iget v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    int-to-long v8, v0

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v0, v4, v10

    if-eqz v0, :cond_8

    if-eqz v3, :cond_4

    add-long v12, v8, v4

    cmp-long v0, v12, v1

    if-ltz v0, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    iget v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    int-to-long v0, v0

    add-long v2, v8, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_7

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/Sniffer;->readUint(Landroidx/media3/extractor/DefaultExtractorInput;)J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/Sniffer;->readUint(Landroidx/media3/extractor/DefaultExtractorInput;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_8

    const-wide/32 v12, 0x7fffffff

    cmp-long v3, v0, v12

    if-lez v3, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_4

    long-to-int v0, v0

    invoke-virtual {p1, v0, v6}, Landroidx/media3/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    iget v1, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    goto :goto_2

    :cond_7
    if-nez v0, :cond_8

    return v7

    :cond_8
    :goto_3
    return v6
.end method

.method public final writeSampleData(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;IZ)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const-string v4, "S_TEXT/UTF8"

    iget-object v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v2, Landroidx/media3/extractor/mkv/MatroskaExtractor;->SUBRIP_PREFIX:[B

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->writeSubtitleSampleData(Landroidx/media3/extractor/ExtractorInput;[BI)V

    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    invoke-virtual {v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->resetWriteSampleData()V

    return v1

    :cond_0
    const-string v4, "S_TEXT/ASS"

    iget-object v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v2, Landroidx/media3/extractor/mkv/MatroskaExtractor;->SSA_PREFIX:[B

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->writeSubtitleSampleData(Landroidx/media3/extractor/ExtractorInput;[BI)V

    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    invoke-virtual {v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->resetWriteSampleData()V

    return v1

    :cond_1
    const-string v4, "S_TEXT/WEBVTT"

    iget-object v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v2, Landroidx/media3/extractor/mkv/MatroskaExtractor;->VTT_PREFIX:[B

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->writeSubtitleSampleData(Landroidx/media3/extractor/ExtractorInput;[BI)V

    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    invoke-virtual {v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->resetWriteSampleData()V

    return v1

    :cond_2
    iget-object v4, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media3/extractor/TrackOutput;

    iget-boolean v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    iget-object v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v5, :cond_13

    iget-boolean v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    iget-object v11, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    if-eqz v5, :cond_e

    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const v12, -0x40000001    # -1.9999999f

    and-int/2addr v5, v12

    iput v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockFlags:I

    iget-boolean v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    const/16 v12, 0x80

    if-nez v5, :cond_4

    iget-object v5, v11, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v5, v10, v9}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v5, v9

    iput v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    iget-object v5, v11, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v5, v5, v10

    and-int/lit16 v13, v5, 0x80

    if-eq v13, v12, :cond_3

    iput-byte v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    iput-boolean v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    goto :goto_0

    :cond_3
    const-string v0, "Extension bit is set in signal byte"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_4
    :goto_0
    iget-byte v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    and-int/lit8 v13, v5, 0x1

    if-ne v13, v9, :cond_f

    and-int/2addr v5, v8

    if-ne v5, v8, :cond_5

    move v5, v9

    goto :goto_1

    :cond_5
    move v5, v10

    :goto_1
    iget v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const/high16 v14, 0x40000000    # 2.0f

    or-int/2addr v13, v14

    iput v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockFlags:I

    iget-boolean v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    if-nez v13, :cond_7

    iget-object v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v14, v13, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/16 v15, 0x8

    invoke-interface {v1, v14, v10, v15}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget v14, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v14, v15

    iput v14, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    iput-boolean v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    iget-object v14, v11, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    move v12, v10

    :goto_2
    or-int/2addr v12, v15

    int-to-byte v12, v12

    aput-byte v12, v14, v10

    invoke-virtual {v11, v10}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-interface {v4, v11, v9, v9}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v12, v9

    iput v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    invoke-virtual {v13, v10}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-interface {v4, v13, v15, v9}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v12, v15

    iput v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    :cond_7
    if-eqz v5, :cond_f

    iget-boolean v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    if-nez v5, :cond_8

    iget-object v5, v11, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v5, v10, v9}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v5, v9

    iput v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    invoke-virtual {v11, v10}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    iput v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    iput-boolean v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    :cond_8
    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    mul-int/2addr v5, v7

    invoke-virtual {v11, v5}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v12, v11, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v12, v10, v5}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v12, v5

    iput v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    div-int/2addr v5, v8

    add-int/2addr v5, v9

    int-to-short v5, v5

    mul-int/lit8 v12, v5, 0x6

    add-int/2addr v12, v8

    iget-object v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    if-eqz v13, :cond_9

    invoke-virtual {v13}, Ljava/nio/Buffer;->capacity()I

    move-result v13

    if-ge v13, v12, :cond_a

    :cond_9
    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    iput-object v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    :cond_a
    iget-object v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v13, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v13, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move v5, v10

    move v13, v5

    :goto_3
    iget v14, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    if-ge v5, v14, :cond_c

    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v14

    rem-int/lit8 v15, v5, 0x2

    if-nez v15, :cond_b

    iget-object v15, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    sub-int v13, v14, v13

    int-to-short v13, v13

    invoke-virtual {v15, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_4

    :cond_b
    iget-object v15, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    sub-int v13, v14, v13

    invoke-virtual {v15, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_4
    add-int/lit8 v5, v5, 0x1

    move v13, v14

    goto :goto_3

    :cond_c
    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    sub-int v5, v3, v5

    sub-int/2addr v5, v13

    rem-int/2addr v14, v8

    if-ne v14, v9, :cond_d

    iget-object v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v13, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_5

    :cond_d
    iget-object v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    int-to-short v5, v5

    invoke-virtual {v13, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_5
    iget-object v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    iget-object v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v13, v12, v5}, Landroidx/media3/common/util/ParsableByteArray;->reset(I[B)V

    invoke-interface {v4, v13, v12, v9}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v5, v12

    iput v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    goto :goto_6

    :cond_e
    iget-object v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    if-eqz v5, :cond_f

    array-length v12, v5

    invoke-virtual {v6, v12, v5}, Landroidx/media3/common/util/ParsableByteArray;->reset(I[B)V

    :cond_f
    :goto_6
    const-string v5, "A_OPUS"

    iget-object v12, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    move/from16 v5, p4

    goto :goto_7

    :cond_10
    iget v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxBlockAdditionId:I

    if-lez v5, :cond_11

    move v5, v9

    goto :goto_7

    :cond_11
    move v5, v10

    :goto_7
    if-eqz v5, :cond_12

    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const/high16 v12, 0x10000000

    or-int/2addr v5, v12

    iput v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockFlags:I

    iget-object v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->supplementalData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5, v10}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget v5, v6, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    add-int/2addr v5, v3

    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    sub-int/2addr v5, v12

    invoke-virtual {v11, v7}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v12, v11, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    shr-int/lit8 v13, v5, 0x18

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v12, v10

    shr-int/lit8 v13, v5, 0x10

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v12, v9

    shr-int/lit8 v13, v5, 0x8

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v12, v8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/4 v13, 0x3

    aput-byte v5, v12, v13

    invoke-interface {v4, v11, v7, v8}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v5, v7

    iput v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    :cond_12
    iput-boolean v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    :cond_13
    iget v5, v6, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    add-int/2addr v3, v5

    const-string v5, "V_MPEG4/ISO/AVC"

    iget-object v11, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    const-string v5, "V_MPEGH/ISO/HEVC"

    iget-object v11, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    goto :goto_b

    :cond_14
    iget-object v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    if-eqz v5, :cond_16

    iget v5, v6, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    if-nez v5, :cond_15

    goto :goto_8

    :cond_15
    move v9, v10

    :goto_8
    invoke-static {v9}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iget-object v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    invoke-virtual {v5, v1}, Landroidx/media3/extractor/TrueHdSampleRechunker;->startSample(Landroidx/media3/extractor/ExtractorInput;)V

    :cond_16
    :goto_9
    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    if-ge v5, v3, :cond_1c

    sub-int v5, v3, v5

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    if-lez v8, :cond_17

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-interface {v4, v6, v5, v10}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    goto :goto_a

    :cond_17
    invoke-interface {v4, v1, v5, v10}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v5

    :goto_a
    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v8, v5

    iput v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v8, v5

    iput v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    goto :goto_9

    :cond_18
    :goto_b
    iget-object v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->nalLength:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v11, v5, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aput-byte v10, v11, v10

    aput-byte v10, v11, v9

    aput-byte v10, v11, v8

    iget v8, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v9, v8, 0x4

    :goto_c
    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    if-ge v12, v3, :cond_1c

    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    if-nez v12, :cond_1a

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v12

    invoke-static {v8, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    add-int v13, v9, v12

    sub-int v14, v8, v12

    invoke-interface {v1, v11, v13, v14}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    if-lez v12, :cond_19

    invoke-virtual {v6, v9, v12, v11}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    :cond_19
    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v12, v8

    iput v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    invoke-virtual {v5, v10}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v12

    iput v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    iget-object v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v12, v10}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-interface {v4, v12, v7, v10}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v12, v7

    iput v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    goto :goto_c

    :cond_1a
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v13

    if-lez v13, :cond_1b

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-interface {v4, v6, v12, v10}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    goto :goto_d

    :cond_1b
    invoke-interface {v4, v1, v12, v10}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v12

    :goto_d
    iget v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v13, v12

    iput v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    iget v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v13, v12

    iput v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    iget v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v13, v12

    iput v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_c

    :cond_1c
    const-string v1, "A_VORBIS"

    iget-object v2, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1, v10}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-interface {v4, v1, v7, v10}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v1, v7

    iput v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    :cond_1d
    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    invoke-virtual {v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->resetWriteSampleData()V

    return v1
.end method

.method public final writeSubtitleSampleData(Landroidx/media3/extractor/ExtractorInput;[BI)V
    .locals 4

    array-length v0, p2

    add-int/2addr v0, p3

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v2, v0, :cond_0

    add-int v1, v0, p3

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v2, v1

    invoke-virtual {p0, v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I[B)V

    goto :goto_0

    :cond_0
    array-length v2, p2

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    array-length p2, p2

    invoke-interface {p1, v1, p2, p3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    return-void
.end method
