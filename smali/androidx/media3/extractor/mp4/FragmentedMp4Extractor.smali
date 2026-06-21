.class public final Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# static fields
.field public static final EMSG_FORMAT:Landroidx/media3/common/Format;

.field public static final PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B


# instance fields
.field public atomData:Landroidx/media3/common/util/ParsableByteArray;

.field public final atomHeader:Landroidx/media3/common/util/ParsableByteArray;

.field public atomHeaderBytesRead:I

.field public atomSize:J

.field public atomType:I

.field public ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

.field public final closedCaptionFormats:Ljava/util/List;

.field public final containerAtoms:Ljava/util/ArrayDeque;

.field public currentTrackBundle:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

.field public durationUs:J

.field public emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

.field public endOfMdatPosition:J

.field public final eventMessageEncoder:Lcom/tinder/StateMachine;

.field public extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field public final flags:I

.field public haveOutputSeekMap:Z

.field public isSampleDependedOn:Z

.field public lastSniffFailures:Lcom/google/common/collect/RegularImmutableList;

.field public final nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

.field public final nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

.field public final nalUnitWithoutHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field public parserState:I

.field public pendingMetadataSampleBytes:I

.field public final pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

.field public pendingSeekTimeUs:J

.field public processSeiNalUnitPayload:Z

.field public final reorderingSeiMessageQueue:Landroidx/recyclerview/widget/AdapterHelper;

.field public sampleBytesWritten:I

.field public sampleCurrentNalBytesRemaining:I

.field public sampleSize:I

.field public final scratch:Landroidx/media3/common/util/ParsableByteArray;

.field public final scratchBytes:[B

.field public segmentIndexEarliestPresentationTimeUs:J

.field public final subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

.field public final trackBundles:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v1, "application/x-emsg"

    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    new-instance v1, Landroidx/media3/common/Format;

    invoke-direct {v1, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    sput-object v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->EMSG_FORMAT:Landroidx/media3/common/Format;

    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V
    .locals 2

    sget-object v0, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object v0, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    iput p2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->flags:I

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    new-instance p1, Lcom/tinder/StateMachine;

    const/16 p2, 0xc

    invoke-direct {p1, p2}, Lcom/tinder/StateMachine;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->eventMessageEncoder:Lcom/tinder/StateMachine;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    sget-object v1, Landroidx/media3/container/ObuParser;->NAL_START_CODE:[B

    invoke-direct {p1, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x6

    invoke-direct {p1, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalUnitWithoutHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    new-array p1, p2, [B

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->scratchBytes:[B

    new-instance p2, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p2, p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object p2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->lastSniffFailures:Lcom/google/common/collect/RegularImmutableList;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    iput-wide p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    iput-wide p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    sget-object p1, Landroidx/media3/extractor/ExtractorOutput;->PLACEHOLDER:Landroidx/transition/Transition$1;

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    const/4 p1, 0x0

    new-array p2, p1, [Landroidx/media3/extractor/TrackOutput;

    iput-object p2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    new-array p1, p1, [Landroidx/media3/extractor/TrackOutput;

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    new-instance p1, Landroidx/recyclerview/widget/AdapterHelper;

    new-instance p2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;)V

    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/AdapterHelper;-><init>(Landroidx/media3/container/ReorderingSeiMessageQueue$SeiConsumer;)V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->reorderingSeiMessageQueue:Landroidx/recyclerview/widget/AdapterHelper;

    return-void
.end method

.method public static getDrmInitDataFromAtoms(Ljava/util/List;)Landroidx/media3/common/DrmInitData;
    .locals 19

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_b

    move-object/from16 v5, p0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/container/Mp4Box$LeafBox;

    iget v7, v6, Landroidx/media3/decoder/Buffer;->flags:I

    const v8, 0x70737368    # 3.013775E29f

    if-ne v7, v8, :cond_a

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget-object v6, v6, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v6, v6, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    new-instance v7, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v7, v6}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iget v8, v7, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    const/16 v9, 0x20

    if-ge v8, v9, :cond_1

    :goto_1
    move/from16 v16, v3

    :goto_2
    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v9

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v11

    const-string v12, "PsshAtomUtil"

    if-eq v11, v9, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Advertised atom size ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") does not match buffer size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    const v11, 0x70737368    # 3.013775E29f

    if-eq v9, v11, :cond_3

    const-string v7, "Atom type is not pssh: "

    invoke-static {v7, v9, v12}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$2(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    invoke-static {v9}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v9

    const/4 v11, 0x1

    if-le v9, v11, :cond_4

    const-string v7, "Unsupported pssh version: "

    invoke-static {v7, v9, v12}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$2(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v13, Ljava/util/UUID;

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v14

    move/from16 v16, v3

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v2

    invoke-direct {v13, v14, v15, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    if-ne v9, v11, :cond_5

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    new-array v3, v2, [Ljava/util/UUID;

    move v11, v8

    :goto_3
    if-ge v11, v2, :cond_6

    new-instance v14, Ljava/util/UUID;

    move/from16 v17, v11

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v10

    move/from16 v18, v2

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v1

    invoke-direct {v14, v10, v11, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    aput-object v14, v3, v17

    add-int/lit8 v11, v17, 0x1

    move/from16 v2, v18

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :cond_6
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-eq v1, v2, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "Atom data size ("

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") does not match the bytes left: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    new-array v2, v1, [B

    invoke-virtual {v7, v8, v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    new-instance v10, Landroidx/room/ObservedTableVersions;

    invoke-direct {v10, v13, v9, v2, v3}, Landroidx/room/ObservedTableVersions;-><init>(Ljava/util/UUID;I[B[Ljava/util/UUID;)V

    :goto_4
    if-nez v10, :cond_8

    const/4 v1, 0x0

    goto :goto_5

    :cond_8
    iget-object v1, v10, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast v1, Ljava/util/UUID;

    :goto_5
    if-nez v1, :cond_9

    const-string v1, "FragmentedMp4Extractor"

    const-string v2, "Skipped pssh atom (failed to extract uuid)"

    invoke-static {v1, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    new-instance v2, Landroidx/media3/common/DrmInitData$SchemeData;

    const-string/jumbo v3, "video/mp4"

    const/4 v7, 0x0

    invoke-direct {v2, v1, v7, v3, v6}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    move/from16 v16, v3

    :goto_6
    const/4 v7, 0x0

    :goto_7
    add-int/lit8 v3, v16, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v7, 0x0

    if-nez v4, :cond_c

    return-object v7

    :cond_c
    new-instance v0, Landroidx/media3/common/DrmInitData;

    const/4 v1, 0x0

    new-array v2, v1, [Landroidx/media3/common/DrmInitData$SchemeData;

    invoke-interface {v4, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/media3/common/DrmInitData$SchemeData;

    invoke-direct {v0, v7, v1, v2}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;Z[Landroidx/media3/common/DrmInitData$SchemeData;)V

    return-object v0
.end method

.method public static parseSenc(Landroidx/media3/common/util/ParsableByteArray;ILandroidx/media3/extractor/mp4/TrackFragment;)V
    .locals 5

    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result p1

    sget-object v0, Landroidx/media3/extractor/mp4/BoxParser;->opusMagic:[B

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_3

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    if-nez v2, :cond_1

    iget-object p0, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    iget p1, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-static {p0, v0, p1, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void

    :cond_1
    iget v3, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    iget-object v4, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroidx/media3/common/util/ParsableByteArray;

    if-ne v2, v3, :cond_2

    iget-object v3, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {v3, v0, v2, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    invoke-virtual {v4, p1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iput-boolean v1, p2, Landroidx/media3/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    iput-boolean v1, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    iget-object p1, v4, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, v4, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    invoke-virtual {p0, v0, v1, p1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-virtual {v4, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iput-boolean v0, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    return-void

    :cond_2
    const-string p0, "Senc sample count "

    const-string p1, " is different from fragment sample count"

    invoke-static {p0, v2, p1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, p2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_3
    const-string p0, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-static {p0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final getSniffFailureDetails()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->lastSniffFailures:Lcom/google/common/collect/RegularImmutableList;

    return-object p0
.end method

.method public final init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 6

    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->flags:I

    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_0

    new-instance v1, Landroidx/compose/runtime/Latch;

    iget-object v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {v1, p1, v2}, Landroidx/compose/runtime/Latch;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    move-object p1, v1

    :cond_0
    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    iput v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    const/4 v2, 0x2

    new-array v2, v2, [Landroidx/media3/extractor/TrackOutput;

    iput-object v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    and-int/lit8 v0, v0, 0x4

    const/16 v3, 0x64

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    invoke-interface {p1, v3, v0}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    aput-object p1, v2, v1

    const/4 p1, 0x1

    const/16 v3, 0x65

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    invoke-static {p1, v0}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media3/extractor/TrackOutput;

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    array-length v0, p1

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v4, p1, v2

    sget-object v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->EMSG_FORMAT:Landroidx/media3/common/Format;

    invoke-interface {v4, v5}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroidx/media3/extractor/TrackOutput;

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    :goto_2
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    add-int/lit8 v2, v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v0, v3, v4}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/Format;

    invoke-interface {v0, v3}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    iget-object v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    aput-object v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final processAtomEnded$1(J)V
    .locals 52

    move-object/from16 v0, p0

    :cond_0
    :goto_0
    iget-object v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_57

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/container/Mp4Box$ContainerBox;

    iget-wide v4, v2, Landroidx/media3/container/Mp4Box$ContainerBox;->endPosition:J

    cmp-long v2, v4, p1

    if-nez v2, :cond_57

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroidx/media3/container/Mp4Box$ContainerBox;

    iget v2, v4, Landroidx/media3/decoder/Buffer;->flags:I

    iget-object v5, v4, Landroidx/media3/container/Mp4Box$ContainerBox;->containerChildren:Ljava/util/ArrayList;

    iget-object v6, v4, Landroidx/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/ArrayList;

    const v7, 0x6d6f6f76

    iget v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->flags:I

    const/16 v10, 0xc

    iget-object v15, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    if-ne v2, v7, :cond_b

    move v7, v8

    invoke-static {v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->getDrmInitDataFromAtoms(Ljava/util/List;)Landroidx/media3/common/DrmInitData;

    move-result-object v8

    const v1, 0x6d766578

    invoke-virtual {v4, v1}, Landroidx/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, v1, Landroidx/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    :goto_1
    if-ge v6, v5, :cond_4

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media3/container/Mp4Box$LeafBox;

    iget v3, v11, Landroidx/media3/decoder/Buffer;->flags:I

    iget-object v11, v11, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v17, 0x1

    const v12, 0x74726578

    if-ne v3, v12, :cond_1

    invoke-virtual {v11, v10}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v10

    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v18, v1

    new-instance v1, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-direct {v1, v12, v10, v9, v11}, Landroidx/media3/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    invoke-static {v3, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_1
    move-object/from16 v18, v1

    const v1, 0x6d656864

    if-ne v3, v1, :cond_3

    const/16 v1, 0x8

    invoke-virtual {v11, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-static {v1}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    goto :goto_2

    :cond_2
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v9

    :goto_2
    move-wide v13, v9

    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v18

    const/16 v10, 0xc

    goto :goto_1

    :cond_4
    const/16 v17, 0x1

    new-instance v5, Landroidx/media3/extractor/GaplessInfoHolder;

    invoke-direct {v5}, Landroidx/media3/extractor/GaplessInfoHolder;-><init>()V

    and-int/lit8 v1, v7, 0x10

    if-eqz v1, :cond_5

    move/from16 v9, v17

    goto :goto_4

    :cond_5
    const/4 v9, 0x0

    :goto_4
    new-instance v11, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda0;

    invoke-direct {v11, v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;)V

    const/4 v10, 0x0

    move-wide v6, v13

    invoke-static/range {v4 .. v11}, Landroidx/media3/extractor/mp4/BoxParser;->parseTraks(Landroidx/media3/container/Mp4Box$ContainerBox;Landroidx/media3/extractor/GaplessInfoHolder;JLandroidx/media3/common/DrmInitData;ZZLcom/google/common/base/Function;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v1}, Landroidx/media3/extractor/mp4/Sniffer;->getContainerMimeType(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v3, :cond_7

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v7, v6, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget v9, v7, Landroidx/media3/extractor/mp4/Track;->type:I

    iget v10, v7, Landroidx/media3/extractor/mp4/Track;->id:I

    invoke-interface {v8, v5, v9}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v11

    move/from16 v12, v17

    if-ne v11, v12, :cond_6

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    goto :goto_6

    :cond_6
    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_6
    invoke-direct {v9, v8, v6, v12, v4}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/mp4/TrackSampleTable;Landroidx/media3/extractor/mp4/DefaultSampleValues;Ljava/lang/String;)V

    invoke-virtual {v15, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-wide v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    iget-wide v6, v7, Landroidx/media3/extractor/mp4/Track;->durationUs:J

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    add-int/lit8 v5, v5, 0x1

    const/16 v17, 0x1

    goto :goto_5

    :cond_7
    iget-object v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ne v4, v3, :cond_9

    const/4 v4, 0x1

    goto :goto_7

    :cond_9
    const/4 v4, 0x0

    :goto_7
    invoke-static {v4}, Landroidx/media3/common/util/Log;->checkState(Z)V

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v6, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget v7, v6, Landroidx/media3/extractor/mp4/Track;->id:I

    invoke-virtual {v15, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v6, v6, Landroidx/media3/extractor/mp4/Track;->id:I

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v12, 0x1

    if-ne v8, v12, :cond_a

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    goto :goto_9

    :cond_a
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_9
    invoke-virtual {v7, v5, v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset(Landroidx/media3/extractor/mp4/TrackSampleTable;Landroidx/media3/extractor/mp4/DefaultSampleValues;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_b
    move v7, v8

    const v3, 0x6d6f6f66

    if-ne v2, v3, :cond_56

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v11, 0x0

    :goto_a
    if-ge v11, v1, :cond_50

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/container/Mp4Box$ContainerBox;

    iget v4, v3, Landroidx/media3/decoder/Buffer;->flags:I

    const v8, 0x74726166

    if-ne v4, v8, :cond_4f

    const v4, 0x74666864

    invoke-virtual {v3, v4}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v4

    iget-object v8, v3, Landroidx/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    sget-object v10, Landroidx/media3/extractor/mp4/BoxParser;->opusMagic:[B

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v10

    invoke-virtual {v15, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    if-nez v10, :cond_c

    move/from16 v21, v1

    const/4 v10, 0x0

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_10

    :cond_c
    iget-object v12, v10, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    and-int/lit8 v18, v9, 0x1

    if-eqz v18, :cond_d

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v13

    iput-wide v13, v12, Landroidx/media3/extractor/mp4/TrackFragment;->dataPosition:J

    iput-wide v13, v12, Landroidx/media3/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    goto :goto_b

    :cond_d
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    :goto_b
    iget-object v13, v10, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    and-int/lit8 v14, v9, 0x2

    if-eqz v14, :cond_e

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v14

    const/16 v17, 0x1

    add-int/lit8 v14, v14, -0x1

    goto :goto_c

    :cond_e
    iget v14, v13, Landroidx/media3/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    :goto_c
    and-int/lit8 v20, v9, 0x8

    if-eqz v20, :cond_f

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v20

    move/from16 v2, v20

    goto :goto_d

    :cond_f
    iget v2, v13, Landroidx/media3/extractor/mp4/DefaultSampleValues;->duration:I

    :goto_d
    and-int/lit8 v21, v9, 0x10

    if-eqz v21, :cond_10

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v21

    move/from16 v51, v21

    move/from16 v21, v1

    move/from16 v1, v51

    goto :goto_e

    :cond_10
    move/from16 v21, v1

    iget v1, v13, Landroidx/media3/extractor/mp4/DefaultSampleValues;->size:I

    :goto_e
    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_11

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    goto :goto_f

    :cond_11
    iget v4, v13, Landroidx/media3/extractor/mp4/DefaultSampleValues;->flags:I

    :goto_f
    new-instance v9, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-direct {v9, v14, v2, v1, v4}, Landroidx/media3/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    iput-object v9, v12, Landroidx/media3/extractor/mp4/TrackFragment;->header:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    :goto_10
    if-nez v10, :cond_13

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move/from16 v49, v7

    move/from16 v46, v11

    const/4 v12, 0x1

    const/16 v13, 0xc

    :cond_12
    const/16 v9, 0x8

    goto/16 :goto_37

    :cond_13
    iget-object v1, v10, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-wide v12, v1, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    iget-boolean v2, v1, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    invoke-virtual {v10}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->resetFragmentInfo()V

    const/4 v4, 0x1

    iput-boolean v4, v10, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    const v9, 0x74666474

    invoke-virtual {v3, v9}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v9

    if-eqz v9, :cond_15

    and-int/lit8 v14, v7, 0x2

    if-nez v14, :cond_15

    iget-object v2, v9, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    invoke-static {v9}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v9

    if-ne v9, v4, :cond_14

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v12

    goto :goto_11

    :cond_14
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v12

    :goto_11
    iput-wide v12, v1, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    iput-boolean v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    goto :goto_12

    :cond_15
    iput-wide v12, v1, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    iput-boolean v2, v1, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    :goto_12
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_13
    const v13, 0x7472756e

    if-ge v4, v2, :cond_17

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/media3/container/Mp4Box$LeafBox;

    move/from16 v22, v4

    iget v4, v14, Landroidx/media3/decoder/Buffer;->flags:I

    if-ne v4, v13, :cond_16

    iget-object v4, v14, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v13, 0xc

    invoke-virtual {v4, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    if-lez v4, :cond_16

    add-int/2addr v12, v4

    add-int/lit8 v9, v9, 0x1

    :cond_16
    add-int/lit8 v4, v22, 0x1

    goto :goto_13

    :cond_17
    const/4 v4, 0x0

    iput v4, v10, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    iput v4, v10, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    iput v4, v10, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iput v9, v1, Landroidx/media3/extractor/mp4/TrackFragment;->trunCount:I

    iput v12, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    iget-object v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->trunLength:[I

    array-length v4, v4

    if-ge v4, v9, :cond_18

    new-array v4, v9, [J

    iput-object v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->trunDataPosition:[J

    new-array v4, v9, [I

    iput-object v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->trunLength:[I

    :cond_18
    iget-object v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    array-length v4, v4

    if-ge v4, v12, :cond_19

    mul-int/lit8 v12, v12, 0x7d

    div-int/lit8 v12, v12, 0x64

    new-array v4, v12, [I

    iput-object v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    new-array v4, v12, [J

    iput-object v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->samplePresentationTimesUs:[J

    new-array v4, v12, [Z

    iput-object v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    new-array v4, v12, [Z

    iput-object v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    :cond_19
    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_14
    const-wide/16 v22, 0x0

    const/16 v24, 0x10

    if-ge v4, v2, :cond_31

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v14, v25

    check-cast v14, Landroidx/media3/container/Mp4Box$LeafBox;

    move/from16 v25, v2

    iget v2, v14, Landroidx/media3/decoder/Buffer;->flags:I

    if-ne v2, v13, :cond_30

    add-int/lit8 v2, v9, 0x1

    iget-object v14, v14, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v13, 0x8

    invoke-virtual {v14, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v14}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v13

    sget-object v27, Landroidx/media3/extractor/mp4/BoxParser;->opusMagic:[B

    move/from16 v27, v2

    iget-object v2, v10, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v2, v2, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    move/from16 v28, v4

    iget-object v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->header:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    sget v29, Landroidx/media3/common/util/Util;->SDK_INT:I

    move-object/from16 v29, v5

    iget-object v5, v1, Landroidx/media3/extractor/mp4/TrackFragment;->trunLength:[I

    invoke-virtual {v14}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v30

    aput v30, v5, v9

    iget-object v5, v1, Landroidx/media3/extractor/mp4/TrackFragment;->trunDataPosition:[J

    move-object/from16 v31, v5

    move-object/from16 v30, v6

    iget-wide v5, v1, Landroidx/media3/extractor/mp4/TrackFragment;->dataPosition:J

    aput-wide v5, v31, v9

    and-int/lit8 v32, v13, 0x1

    if-eqz v32, :cond_1a

    move-wide/from16 v32, v5

    invoke-virtual {v14}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    int-to-long v5, v5

    add-long v5, v32, v5

    aput-wide v5, v31, v9

    :cond_1a
    and-int/lit8 v5, v13, 0x4

    if-eqz v5, :cond_1b

    const/4 v5, 0x1

    goto :goto_15

    :cond_1b
    const/4 v5, 0x0

    :goto_15
    iget v6, v4, Landroidx/media3/extractor/mp4/DefaultSampleValues;->flags:I

    if-eqz v5, :cond_1c

    invoke-virtual {v14}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    :cond_1c
    move/from16 v31, v5

    and-int/lit16 v5, v13, 0x100

    if-eqz v5, :cond_1d

    const/4 v5, 0x1

    goto :goto_16

    :cond_1d
    const/4 v5, 0x0

    :goto_16
    move/from16 v32, v5

    and-int/lit16 v5, v13, 0x200

    if-eqz v5, :cond_1e

    const/4 v5, 0x1

    goto :goto_17

    :cond_1e
    const/4 v5, 0x0

    :goto_17
    move/from16 v33, v5

    and-int/lit16 v5, v13, 0x400

    if-eqz v5, :cond_1f

    const/4 v5, 0x1

    goto :goto_18

    :cond_1f
    const/4 v5, 0x0

    :goto_18
    and-int/lit16 v13, v13, 0x800

    if-eqz v13, :cond_20

    const/4 v13, 0x1

    :goto_19
    move/from16 v34, v5

    goto :goto_1a

    :cond_20
    const/4 v13, 0x0

    goto :goto_19

    :goto_1a
    iget-object v5, v2, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    move/from16 v35, v6

    iget-object v6, v2, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    if-eqz v5, :cond_23

    move-object/from16 v36, v6

    array-length v6, v5

    move-object/from16 v37, v5

    const/4 v5, 0x1

    if-ne v6, v5, :cond_23

    if-nez v36, :cond_21

    goto :goto_1c

    :cond_21
    const/16 v16, 0x0

    aget-wide v38, v37, v16

    cmp-long v5, v38, v22

    if-nez v5, :cond_22

    goto :goto_1b

    :cond_22
    iget-wide v5, v2, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    sget-object v44, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v40, 0xf4240

    move-wide/from16 v42, v5

    invoke-static/range {v38 .. v44}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v5

    aget-wide v40, v36, v16

    const-wide/32 v42, 0xf4240

    move-wide/from16 v37, v5

    iget-wide v5, v2, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move-object/from16 v46, v44

    move-wide/from16 v44, v5

    invoke-static/range {v40 .. v46}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v5

    add-long v5, v37, v5

    move-wide/from16 v37, v5

    iget-wide v5, v2, Landroidx/media3/extractor/mp4/Track;->durationUs:J

    cmp-long v5, v37, v5

    if-ltz v5, :cond_23

    :goto_1b
    aget-wide v22, v36, v16

    :cond_23
    :goto_1c
    iget-object v5, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    iget-object v6, v1, Landroidx/media3/extractor/mp4/TrackFragment;->samplePresentationTimesUs:[J

    move-object/from16 v36, v5

    iget-object v5, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    move-object/from16 v37, v5

    iget v5, v2, Landroidx/media3/extractor/mp4/Track;->type:I

    move-object/from16 v38, v6

    const/4 v6, 0x2

    if-ne v5, v6, :cond_24

    and-int/lit8 v5, v7, 0x1

    if-eqz v5, :cond_24

    const/4 v5, 0x1

    goto :goto_1d

    :cond_24
    const/4 v5, 0x0

    :goto_1d
    iget-object v6, v1, Landroidx/media3/extractor/mp4/TrackFragment;->trunLength:[I

    aget v6, v6, v9

    add-int/2addr v6, v12

    move/from16 v46, v11

    move/from16 v26, v12

    iget-wide v11, v2, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move-wide/from16 v43, v11

    iget-wide v11, v1, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    move/from16 v2, v26

    :goto_1e
    if-ge v2, v6, :cond_2f

    if-eqz v32, :cond_25

    invoke-virtual {v14}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    :goto_1f
    move/from16 v26, v2

    goto :goto_20

    :cond_25
    iget v9, v4, Landroidx/media3/extractor/mp4/DefaultSampleValues;->duration:I

    goto :goto_1f

    :goto_20
    const-string v2, "Unexpected negative value: "

    if-ltz v9, :cond_2e

    if-eqz v33, :cond_26

    invoke-virtual {v14}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v39

    move/from16 v47, v5

    move/from16 v5, v39

    goto :goto_21

    :cond_26
    move/from16 v47, v5

    iget v5, v4, Landroidx/media3/extractor/mp4/DefaultSampleValues;->size:I

    :goto_21
    if-ltz v5, :cond_2d

    if-eqz v34, :cond_27

    invoke-virtual {v14}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    goto :goto_22

    :cond_27
    if-nez v26, :cond_28

    if-eqz v31, :cond_28

    move/from16 v2, v35

    goto :goto_22

    :cond_28
    iget v2, v4, Landroidx/media3/extractor/mp4/DefaultSampleValues;->flags:I

    :goto_22
    if-eqz v13, :cond_29

    invoke-virtual {v14}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v39

    move/from16 v48, v2

    move/from16 v2, v39

    :goto_23
    move/from16 v50, v6

    move/from16 v49, v7

    goto :goto_24

    :cond_29
    move/from16 v48, v2

    const/4 v2, 0x0

    goto :goto_23

    :goto_24
    int-to-long v6, v2

    add-long/2addr v6, v11

    sub-long v39, v6, v22

    const-wide/32 v41, 0xf4240

    sget-object v45, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-static/range {v39 .. v45}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    aput-wide v6, v38, v26

    iget-boolean v2, v1, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    if-nez v2, :cond_2a

    iget-object v2, v10, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-wide/from16 v39, v6

    iget-wide v6, v2, Landroidx/media3/extractor/mp4/TrackSampleTable;->durationUs:J

    add-long v6, v39, v6

    aput-wide v6, v38, v26

    :cond_2a
    aput v5, v36, v26

    shr-int/lit8 v2, v48, 0x10

    const/16 v17, 0x1

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_2c

    if-eqz v47, :cond_2b

    if-nez v26, :cond_2c

    :cond_2b
    const/4 v2, 0x1

    goto :goto_25

    :cond_2c
    const/4 v2, 0x0

    :goto_25
    aput-boolean v2, v37, v26

    int-to-long v5, v9

    add-long/2addr v11, v5

    add-int/lit8 v2, v26, 0x1

    move/from16 v5, v47

    move/from16 v7, v49

    move/from16 v6, v50

    goto/16 :goto_1e

    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_2e
    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_2f
    move/from16 v50, v6

    move/from16 v49, v7

    iput-wide v11, v1, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    move/from16 v9, v27

    move/from16 v12, v50

    goto :goto_26

    :cond_30
    move/from16 v28, v4

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move/from16 v49, v7

    move/from16 v46, v11

    move/from16 v26, v12

    :goto_26
    add-int/lit8 v4, v28, 0x1

    move/from16 v2, v25

    move-object/from16 v5, v29

    move-object/from16 v6, v30

    move/from16 v11, v46

    move/from16 v7, v49

    const v13, 0x7472756e

    goto/16 :goto_14

    :cond_31
    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move/from16 v49, v7

    move/from16 v46, v11

    iget-object v2, v10, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v2, v2, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->header:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v4, Landroidx/media3/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    iget-object v2, v2, Landroidx/media3/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    aget-object v2, v2, v4

    const v4, 0x7361697a

    invoke-virtual {v3, v4}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v4

    if-eqz v4, :cond_38

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    iget v5, v2, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    sget-object v7, Landroidx/media3/extractor/mp4/BoxParser;->opusMagic:[B

    const/4 v12, 0x1

    and-int/2addr v6, v12

    if-ne v6, v12, :cond_32

    invoke-virtual {v4, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_32
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    iget v9, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    if-gt v7, v9, :cond_37

    if-nez v6, :cond_35

    iget-object v6, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_27
    if-ge v9, v7, :cond_34

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    add-int/2addr v10, v11

    if-le v11, v5, :cond_33

    const/4 v11, 0x1

    goto :goto_28

    :cond_33
    const/4 v11, 0x0

    :goto_28
    aput-boolean v11, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_27

    :cond_34
    const/4 v11, 0x0

    goto :goto_2a

    :cond_35
    if-le v6, v5, :cond_36

    const/4 v4, 0x1

    goto :goto_29

    :cond_36
    const/4 v4, 0x0

    :goto_29
    mul-int v10, v6, v7

    iget-object v5, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    const/4 v11, 0x0

    invoke-static {v5, v11, v7, v4}, Ljava/util/Arrays;->fill([ZIIZ)V

    :goto_2a
    iget-object v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    iget v5, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-static {v4, v7, v5, v11}, Ljava/util/Arrays;->fill([ZIIZ)V

    if-lez v10, :cond_38

    iget-object v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4, v10}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    const/4 v12, 0x1

    iput-boolean v12, v1, Landroidx/media3/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    iput-boolean v12, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    goto :goto_2b

    :cond_37
    const-string v0, "Saiz sample count "

    const-string v2, " is greater than fragment sample count"

    invoke-static {v0, v7, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_38
    :goto_2b
    const v4, 0x7361696f

    invoke-virtual {v3, v4}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v4

    if-eqz v4, :cond_3b

    iget-object v4, v4, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    sget-object v6, Landroidx/media3/extractor/mp4/BoxParser;->opusMagic:[B

    and-int/lit8 v6, v5, 0x1

    const/4 v12, 0x1

    if-ne v6, v12, :cond_39

    invoke-virtual {v4, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_39
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    if-ne v6, v12, :cond_3c

    invoke-static {v5}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v5

    iget-wide v6, v1, Landroidx/media3/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    if-nez v5, :cond_3a

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    goto :goto_2c

    :cond_3a
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    :goto_2c
    add-long/2addr v6, v4

    iput-wide v6, v1, Landroidx/media3/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    :cond_3b
    const/4 v4, 0x0

    goto :goto_2d

    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected saio entry count: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v4, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :goto_2d
    const v5, 0x73656e63

    invoke-virtual {v3, v5}, Landroidx/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v3

    if-eqz v3, :cond_3d

    iget-object v3, v3, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v11, 0x0

    invoke-static {v3, v11, v1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Landroidx/media3/common/util/ParsableByteArray;ILandroidx/media3/extractor/mp4/TrackFragment;)V

    :cond_3d
    if-eqz v2, :cond_3e

    iget-object v2, v2, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    move-object/from16 v33, v2

    goto :goto_2e

    :cond_3e
    move-object/from16 v33, v4

    :goto_2e
    move-object v2, v4

    move-object v3, v2

    const/4 v5, 0x0

    :goto_2f
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_41

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/container/Mp4Box$LeafBox;

    iget-object v7, v6, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    iget v6, v6, Landroidx/media3/decoder/Buffer;->flags:I

    const v9, 0x73626770

    const v10, 0x73656967

    if-ne v6, v9, :cond_3f

    const/16 v13, 0xc

    invoke-virtual {v7, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    if-ne v6, v10, :cond_40

    move-object v2, v7

    goto :goto_30

    :cond_3f
    const/16 v13, 0xc

    const v9, 0x73677064

    if-ne v6, v9, :cond_40

    invoke-virtual {v7, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    if-ne v6, v10, :cond_40

    move-object v3, v7

    :cond_40
    :goto_30
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    :cond_41
    const/16 v13, 0xc

    if-eqz v2, :cond_42

    if-nez v3, :cond_43

    :cond_42
    :goto_31
    const/4 v12, 0x1

    goto/16 :goto_34

    :cond_43
    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    invoke-static {v5}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v5

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    const/4 v12, 0x1

    if-ne v5, v12, :cond_44

    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_44
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    if-ne v2, v12, :cond_4c

    invoke-virtual {v3, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    invoke-static {v2}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v2

    invoke-virtual {v3, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    if-ne v2, v12, :cond_46

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    cmp-long v2, v9, v22

    if-eqz v2, :cond_45

    goto :goto_32

    :cond_45
    const-string v0, "Variable length description in sgpd found (unsupported)"

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_46
    const/4 v5, 0x2

    if-lt v2, v5, :cond_47

    invoke-virtual {v3, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_47
    :goto_32
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    const-wide/16 v11, 0x1

    cmp-long v2, v9, v11

    if-nez v2, :cond_4b

    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/lit16 v5, v2, 0xf0

    shr-int/lit8 v36, v5, 0x4

    and-int/lit8 v37, v2, 0xf

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    if-ne v2, v12, :cond_48

    const/16 v32, 0x1

    goto :goto_33

    :cond_48
    const/16 v32, 0x0

    :goto_33
    if-nez v32, :cond_49

    goto :goto_31

    :cond_49
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v34

    move/from16 v2, v24

    new-array v5, v2, [B

    const/4 v11, 0x0

    invoke-virtual {v3, v11, v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    if-nez v34, :cond_4a

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    new-array v4, v2, [B

    invoke-virtual {v3, v11, v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    :cond_4a
    move-object/from16 v38, v4

    const/4 v12, 0x1

    iput-boolean v12, v1, Landroidx/media3/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    new-instance v31, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v35, v5

    invoke-direct/range {v31 .. v38}, Landroidx/media3/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    move-object/from16 v2, v31

    iput-object v2, v1, Landroidx/media3/extractor/mp4/TrackFragment;->trackEncryptionBox:Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    goto :goto_34

    :cond_4b
    const-string v0, "Entry count in sgpd != 1 (unsupported)."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_4c
    const-string v0, "Entry count in sbgp != 1 (unsupported)."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :goto_34
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v11, 0x0

    :goto_35
    if-ge v11, v2, :cond_12

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/container/Mp4Box$LeafBox;

    iget v4, v3, Landroidx/media3/decoder/Buffer;->flags:I

    const v5, 0x75756964

    if-ne v4, v5, :cond_4e

    iget-object v3, v3, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->scratchBytes:[B

    const/4 v5, 0x0

    const/16 v6, 0x10

    invoke-virtual {v3, v5, v6, v4}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    sget-object v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_4d

    goto :goto_36

    :cond_4d
    invoke-static {v3, v6, v1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Landroidx/media3/common/util/ParsableByteArray;ILandroidx/media3/extractor/mp4/TrackFragment;)V

    goto :goto_36

    :cond_4e
    const/16 v6, 0x10

    const/16 v9, 0x8

    :goto_36
    add-int/lit8 v11, v11, 0x1

    goto :goto_35

    :cond_4f
    move/from16 v21, v1

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move/from16 v49, v7

    move/from16 v46, v11

    const/16 v9, 0x8

    const/4 v12, 0x1

    const/16 v13, 0xc

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    :goto_37
    add-int/lit8 v11, v46, 0x1

    move/from16 v1, v21

    move-object/from16 v5, v29

    move-object/from16 v6, v30

    move/from16 v7, v49

    goto/16 :goto_a

    :cond_50
    move-object/from16 v30, v6

    const/4 v4, 0x0

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static/range {v30 .. v30}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->getDrmInitDataFromAtoms(Ljava/util/List;)Landroidx/media3/common/DrmInitData;

    move-result-object v1

    if-eqz v1, :cond_52

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v11, 0x0

    :goto_38
    if-ge v11, v2, :cond_52

    invoke-virtual {v15, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v5, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object v6, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-object v6, v6, Landroidx/media3/extractor/mp4/TrackFragment;->header:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    sget v7, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget v6, v6, Landroidx/media3/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    iget-object v5, v5, Landroidx/media3/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    aget-object v5, v5, v6

    if-eqz v5, :cond_51

    iget-object v5, v5, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    goto :goto_39

    :cond_51
    move-object v5, v4

    :goto_39
    invoke-virtual {v1, v5}, Landroidx/media3/common/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media3/common/DrmInitData;

    move-result-object v5

    iget-object v6, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v6, v6, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object v6, v6, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    invoke-virtual {v6}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v6

    iget-object v7, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->containerMimeType:Ljava/lang/String;

    invoke-static {v7}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroidx/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    iput-object v5, v6, Landroidx/media3/common/Format$Builder;->drmInitData:Landroidx/media3/common/DrmInitData;

    new-instance v5, Landroidx/media3/common/Format;

    invoke-direct {v5, v6}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iget-object v3, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v3, v5}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_38

    :cond_52
    iget-wide v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    cmp-long v1, v1, v18

    if-eqz v1, :cond_0

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_3a
    if-ge v3, v1, :cond_55

    invoke-virtual {v15, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-wide v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    iget v6, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    :goto_3b
    iget-object v7, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget v8, v7, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    if-ge v6, v8, :cond_54

    iget-object v8, v7, Landroidx/media3/extractor/mp4/TrackFragment;->samplePresentationTimesUs:[J

    aget-wide v8, v8, v6

    cmp-long v8, v8, v4

    if-gtz v8, :cond_54

    iget-object v7, v7, Landroidx/media3/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    aget-boolean v7, v7, v6

    if-eqz v7, :cond_53

    iput v6, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->firstSampleToOutputIndex:I

    :cond_53
    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    :cond_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :cond_55
    move-wide/from16 v2, v18

    iput-wide v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    goto/16 :goto_0

    :cond_56
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/container/Mp4Box$ContainerBox;

    iget-object v1, v1, Landroidx/media3/container/Mp4Box$ContainerBox;->containerChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_57
    const/4 v11, 0x0

    iput v11, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    iput v11, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    return-void
.end method

.method public final read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :goto_0
    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    const v4, 0x73696478

    iget-object v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    iget-object v7, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->reorderingSeiMessageQueue:Landroidx/recyclerview/widget/AdapterHelper;

    iget-object v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v2, :cond_42

    iget-object v14, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    const-string v15, "FragmentedMp4Extractor"

    if-eq v2, v12, :cond_33

    if-eq v2, v11, :cond_2e

    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    if-nez v2, :cond_9

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v2

    move-object v5, v10

    move/from16 v18, v11

    move v11, v13

    const-wide v16, 0x7fffffffffffffffL

    :goto_1
    if-ge v11, v2, :cond_4

    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v6, v19

    check-cast v6, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-boolean v3, v6, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    const/16 v21, 0x8

    iget-object v9, v6, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    move/from16 v22, v12

    if-nez v3, :cond_0

    iget v12, v6, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget-object v4, v6, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget v4, v4, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-eq v12, v4, :cond_3

    :cond_0
    if-eqz v3, :cond_1

    iget v4, v6, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    iget v12, v9, Landroidx/media3/extractor/mp4/TrackFragment;->trunCount:I

    if-ne v4, v12, :cond_1

    goto :goto_3

    :cond_1
    if-nez v3, :cond_2

    iget-object v3, v6, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v3, v3, Landroidx/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    iget v4, v6, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget-wide v3, v3, v4

    goto :goto_2

    :cond_2
    iget-object v3, v9, Landroidx/media3/extractor/mp4/TrackFragment;->trunDataPosition:[J

    iget v4, v6, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    aget-wide v3, v3, v4

    :goto_2
    cmp-long v9, v3, v16

    if-gez v9, :cond_3

    move-wide/from16 v16, v3

    move-object v5, v6

    :cond_3
    :goto_3
    add-int/lit8 v11, v11, 0x1

    move/from16 v12, v22

    goto :goto_1

    :cond_4
    move/from16 v22, v12

    const/16 v21, 0x8

    if-nez v5, :cond_6

    iget-wide v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    if-ltz v2, :cond_5

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    iput v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    iput v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    goto/16 :goto_0

    :cond_5
    const-string v0, "Offset to end of mdat was negative."

    invoke-static {v10, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_6
    iget-boolean v2, v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v2, :cond_7

    iget-object v2, v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v2, v2, Landroidx/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    iget v3, v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget-wide v2, v2, v3

    goto :goto_4

    :cond_7
    iget-object v2, v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-object v2, v2, Landroidx/media3/extractor/mp4/TrackFragment;->trunDataPosition:[J

    iget v3, v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    aget-wide v2, v2, v3

    :goto_4
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    sub-long/2addr v2, v8

    long-to-int v2, v2

    if-gez v2, :cond_8

    const-string v2, "Ignoring negative offset to sample data."

    invoke-static {v15, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v13

    :cond_8
    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    iput-object v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-object v2, v5

    goto :goto_5

    :cond_9
    move/from16 v18, v11

    move/from16 v22, v12

    const/16 v21, 0x8

    :goto_5
    iget-object v3, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v4, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    const/4 v6, 0x6

    const-string/jumbo v8, "video/hevc"

    const-string/jumbo v9, "video/avc"

    const/4 v11, 0x3

    if-ne v5, v11, :cond_14

    iget-boolean v5, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v5, :cond_a

    iget-object v5, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->sizes:[I

    iget v11, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget v5, v5, v11

    goto :goto_6

    :cond_a
    iget-object v5, v4, Landroidx/media3/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    iget v11, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget v5, v5, v11

    :goto_6
    iput v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    iget-object v5, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget-object v11, v5, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v11, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    iget v12, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->flags:I

    if-eqz v11, :cond_c

    and-int/lit8 v5, v12, 0x40

    if-eqz v5, :cond_b

    :goto_7
    move/from16 v5, v22

    goto :goto_8

    :cond_b
    move v5, v13

    goto :goto_8

    :cond_c
    iget-object v5, v5, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v5, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    and-int/lit16 v5, v12, 0x80

    if-eqz v5, :cond_b

    goto :goto_7

    :goto_8
    xor-int/lit8 v5, v5, 0x1

    iput-boolean v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->isSampleDependedOn:Z

    iget v5, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget v11, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->firstSampleToOutputIndex:I

    if-ge v5, v11, :cond_11

    iget v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    invoke-interface {v1, v3}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_9

    :cond_d
    iget-object v3, v4, Landroidx/media3/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroidx/media3/common/util/ParsableByteArray;

    iget v1, v1, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    if-eqz v1, :cond_e

    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_e
    iget v1, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget-boolean v5, v4, Landroidx/media3/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    if-eqz v5, :cond_f

    iget-object v4, v4, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    aget-boolean v1, v4, v1

    if-eqz v1, :cond_f

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    mul-int/2addr v1, v6

    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_f
    :goto_9
    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->next()Z

    move-result v1

    if-nez v1, :cond_10

    iput-object v10, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    :cond_10
    const/4 v11, 0x3

    iput v11, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    return v13

    :cond_11
    iget-object v5, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget v5, v5, Landroidx/media3/extractor/mp4/Track;->sampleTransformation:I

    move/from16 v11, v22

    if-ne v5, v11, :cond_12

    iget v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    add-int/lit8 v5, v5, -0x8

    iput v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    move/from16 v5, v21

    invoke-interface {v1, v5}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    :cond_12
    iget-object v5, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget-object v5, v5, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v11, "audio/ac4"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    iget v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/4 v11, 0x7

    invoke-virtual {v2, v5, v11}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->outputSampleEncryptionData(II)I

    move-result v5

    iput v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    iget-object v12, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v5, v12}, Landroidx/media3/extractor/AacUtil;->getAc4SampleHeader(ILandroidx/media3/common/util/ParsableByteArray;)V

    invoke-interface {v3, v12, v11, v13}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    iget v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v5, v11

    iput v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    goto :goto_a

    :cond_13
    iget v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    invoke-virtual {v2, v5, v13}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->outputSampleEncryptionData(II)I

    move-result v5

    iput v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    :goto_a
    iget v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    iget v11, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v5, v11

    iput v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/4 v5, 0x4

    iput v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    iput v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    :cond_14
    iget-object v5, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v11, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget-boolean v12, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v12, :cond_15

    iget-object v4, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    iget v5, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget-wide v4, v4, v5

    goto :goto_b

    :cond_15
    iget v5, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget-object v4, v4, Landroidx/media3/extractor/mp4/TrackFragment;->samplePresentationTimesUs:[J

    aget-wide v4, v4, v5

    :goto_b
    iget v12, v11, Landroidx/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    iget-object v11, v11, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    if-eqz v12, :cond_26

    iget-object v15, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v10, v15, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aput-byte v13, v10, v13

    const/16 v22, 0x1

    aput-byte v13, v10, v22

    aput-byte v13, v10, v18

    rsub-int/lit8 v6, v12, 0x4

    :goto_c
    iget v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    move-object/from16 v17, v2

    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v13, v2, :cond_27

    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v2, :cond_20

    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    array-length v2, v2

    if-gtz v2, :cond_16

    iget-boolean v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->isSampleDependedOn:Z

    if-nez v2, :cond_17

    :cond_16
    invoke-static {v11}, Landroidx/media3/container/ObuParser;->numberOfBytesInNalUnitHeader(Landroidx/media3/common/Format;)I

    move-result v2

    add-int v13, v12, v2

    move/from16 v18, v2

    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    move/from16 v21, v2

    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    sub-int v2, v21, v2

    if-gt v13, v2, :cond_17

    move/from16 v2, v18

    goto :goto_d

    :cond_17
    const/4 v2, 0x0

    :goto_d
    add-int v13, v12, v2

    invoke-interface {v1, v10, v6, v13}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    const/4 v13, 0x0

    invoke-virtual {v15, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v18

    if-ltz v18, :cond_1f

    sub-int v13, v18, v2

    iput v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    iget-object v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    move/from16 v18, v6

    const/4 v6, 0x0

    invoke-virtual {v13, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    move/from16 v21, v12

    const/4 v12, 0x4

    invoke-interface {v3, v13, v12, v6}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    iget v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v6, v12

    iput v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    add-int v6, v6, v18

    iput v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    iget-object v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    array-length v6, v6

    if-lez v6, :cond_1c

    if-lez v2, :cond_1c

    aget-byte v6, v10, v12

    iget-object v12, v11, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v13, v11, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v12, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_19

    invoke-static {v13, v9}, Landroidx/media3/common/MimeTypes;->containsCodecsCorrespondingToMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_18

    goto :goto_e

    :cond_18
    move/from16 v23, v6

    const/4 v6, 0x6

    goto :goto_f

    :cond_19
    :goto_e
    and-int/lit8 v12, v6, 0x1f

    move/from16 v23, v6

    const/4 v6, 0x6

    if-eq v12, v6, :cond_1b

    :goto_f
    iget-object v12, v11, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v12, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1a

    invoke-static {v13, v8}, Landroidx/media3/common/MimeTypes;->containsCodecsCorrespondingToMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1d

    :cond_1a
    and-int/lit8 v12, v23, 0x7e

    const/16 v22, 0x1

    shr-int/lit8 v12, v12, 0x1

    const/16 v13, 0x27

    if-ne v12, v13, :cond_1d

    :cond_1b
    const/4 v12, 0x1

    goto :goto_10

    :cond_1c
    const/4 v6, 0x6

    :cond_1d
    const/4 v12, 0x0

    :goto_10
    iput-boolean v12, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->processSeiNalUnitPayload:Z

    const/4 v13, 0x0

    invoke-interface {v3, v15, v2, v13}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    iget v12, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v12, v2

    iput v12, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    if-lez v2, :cond_1e

    iget-boolean v12, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->isSampleDependedOn:Z

    if-nez v12, :cond_1e

    invoke-static {v10, v2, v11}, Landroidx/media3/container/ObuParser;->isDependedOn([BILandroidx/media3/common/Format;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->isSampleDependedOn:Z

    :cond_1e
    :goto_11
    move-object/from16 v2, v17

    move/from16 v6, v18

    move/from16 v12, v21

    goto/16 :goto_c

    :cond_1f
    const-string v0, "Invalid NAL length"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_20
    move/from16 v18, v6

    move/from16 v21, v12

    const/4 v6, 0x6

    iget-boolean v12, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->processSeiNalUnitPayload:Z

    if-eqz v12, :cond_25

    iget-object v12, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->nalUnitWithoutHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v12, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v2, v12, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    const/4 v6, 0x0

    invoke-interface {v1, v2, v6, v13}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    invoke-interface {v3, v12, v2, v6}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    iget-object v13, v12, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    move/from16 v23, v2

    iget v2, v12, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    invoke-static {v2, v13}, Landroidx/media3/container/ObuParser;->unescapeStream(I[B)I

    move-result v2

    invoke-virtual {v12, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v12, v2}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    iget v2, v11, Landroidx/media3/common/Format;->maxNumReorderSamples:I

    const/4 v13, -0x1

    if-ne v2, v13, :cond_21

    iget v2, v7, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    if-eqz v2, :cond_23

    iput v6, v7, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/AdapterHelper;->flushQueueDownToSize(I)V

    goto :goto_13

    :cond_21
    iget v6, v7, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    if-eq v6, v2, :cond_23

    if-ltz v2, :cond_22

    const/4 v6, 0x1

    goto :goto_12

    :cond_22
    const/4 v6, 0x0

    :goto_12
    invoke-static {v6}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iput v2, v7, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    invoke-virtual {v7, v2}, Landroidx/recyclerview/widget/AdapterHelper;->flushQueueDownToSize(I)V

    :cond_23
    :goto_13
    invoke-virtual {v7, v4, v5, v12}, Landroidx/recyclerview/widget/AdapterHelper;->add(JLandroidx/media3/common/util/ParsableByteArray;)V

    invoke-virtual/range {v17 .. v17}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSampleFlags()I

    move-result v2

    const/16 v19, 0x4

    and-int/lit8 v2, v2, 0x4

    const/4 v13, 0x0

    if-eqz v2, :cond_24

    invoke-virtual {v7, v13}, Landroidx/recyclerview/widget/AdapterHelper;->flushQueueDownToSize(I)V

    :cond_24
    move/from16 v2, v23

    goto :goto_14

    :cond_25
    const/4 v13, 0x0

    invoke-interface {v3, v1, v2, v13}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v2

    :goto_14
    iget v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v6, v2

    iput v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v6, v2

    iput v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto/16 :goto_11

    :cond_26
    move-object/from16 v17, v2

    :goto_15
    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v2, v6, :cond_27

    sub-int/2addr v6, v2

    const/4 v13, 0x0

    invoke-interface {v3, v1, v6, v13}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v2

    iget v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v6, v2

    iput v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    goto :goto_15

    :cond_27
    invoke-virtual/range {v17 .. v17}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSampleFlags()I

    move-result v1

    iget-boolean v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->isSampleDependedOn:Z

    if-nez v2, :cond_28

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    :cond_28
    move/from16 v26, v1

    invoke-virtual/range {v17 .. v17}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object v1

    if-eqz v1, :cond_29

    iget-object v1, v1, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->cryptoData:Landroidx/media3/extractor/TrackOutput$CryptoData;

    move-object/from16 v29, v1

    goto :goto_16

    :cond_29
    const/16 v29, 0x0

    :goto_16
    iget v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/16 v28, 0x0

    move/from16 v27, v1

    move-object/from16 v23, v3

    move-wide/from16 v24, v4

    invoke-interface/range {v23 .. v29}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    :cond_2a
    invoke-virtual {v14}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-virtual {v14}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    iget v3, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->size:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    iget-wide v2, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->sampleTimeUs:J

    iget-boolean v4, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->sampleTimeIsRelative:Z

    if-eqz v4, :cond_2b

    add-long v2, v2, v24

    :cond_2b
    move-wide v5, v2

    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    array-length v3, v2

    const/4 v11, 0x0

    :goto_17
    if-ge v11, v3, :cond_2a

    aget-object v4, v2, v11

    iget v8, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->size:I

    iget v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    const/4 v10, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v4 .. v10}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_17

    :cond_2c
    invoke-virtual/range {v17 .. v17}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->next()Z

    move-result v1

    if-nez v1, :cond_2d

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    :cond_2d
    const/4 v11, 0x3

    iput v11, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    const/16 v30, 0x0

    return v30

    :cond_2e
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const/4 v6, 0x0

    :goto_18
    if-ge v6, v2, :cond_30

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v7, v7, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-boolean v9, v7, Landroidx/media3/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    if-eqz v9, :cond_2f

    iget-wide v9, v7, Landroidx/media3/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    cmp-long v7, v9, v4

    if-gez v7, :cond_2f

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-wide v4, v9

    :cond_2f
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_30
    if-nez v3, :cond_31

    const/4 v11, 0x3

    iput v11, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto/16 :goto_0

    :cond_31
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v2, v4

    if-ltz v2, :cond_32

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    iget-object v2, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-object v3, v2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v4, v3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v5, v3, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    const/4 v13, 0x0

    invoke-interface {v1, v4, v13, v5}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {v3, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iput-boolean v13, v2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    goto/16 :goto_0

    :cond_32
    const-string v0, "Offset to encryption data was negative."

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_33
    move/from16 v18, v11

    iget-wide v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v6

    sub-long/2addr v2, v6

    long-to-int v2, v2

    iget-object v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomData:Landroidx/media3/common/util/ParsableByteArray;

    if-eqz v3, :cond_41

    iget-object v6, v3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/16 v7, 0x8

    invoke-interface {v1, v6, v7, v2}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    new-instance v2, Landroidx/media3/container/Mp4Box$LeafBox;

    iget v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-direct {v2, v6, v3}, Landroidx/media3/container/Mp4Box$LeafBox;-><init>(ILandroidx/media3/common/util/ParsableByteArray;)V

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_34

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/container/Mp4Box$ContainerBox;

    iget-object v3, v3, Landroidx/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20

    :cond_34
    if-ne v6, v4, :cond_38

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    invoke-static {v2}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v2

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v13

    if-nez v2, :cond_35

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    :goto_19
    add-long/2addr v9, v7

    move-wide/from16 v31, v9

    move-wide v9, v4

    move-wide/from16 v4, v31

    goto :goto_1a

    :cond_35
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v9

    goto :goto_19

    :goto_1a
    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    sget-object v15, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v11, 0xf4240

    invoke-static/range {v9 .. v15}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    move/from16 v2, v18

    invoke-virtual {v3, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    new-array v8, v2, [I

    new-array v11, v2, [J

    new-array v12, v2, [J

    new-array v15, v2, [J

    move-wide/from16 v17, v6

    move-object/from16 v16, v11

    const/4 v11, 0x0

    :goto_1b
    if-ge v11, v2, :cond_37

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v20

    const/high16 v21, -0x80000000

    and-int v21, v20, v21

    if-nez v21, :cond_36

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v23

    const v21, 0x7fffffff

    and-int v20, v20, v21

    aput v20, v8, v11

    aput-wide v4, v16, v11

    aput-wide v17, v15, v11

    add-long v9, v9, v23

    move/from16 v30, v11

    move-object/from16 v17, v12

    const-wide/32 v11, 0xf4240

    move-object/from16 v18, v15

    sget-object v15, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move/from16 p2, v2

    move-object/from16 v2, v16

    move-wide/from16 v31, v4

    move-object/from16 v4, v17

    move-wide/from16 v16, v31

    move-object/from16 v5, v18

    invoke-static/range {v9 .. v15}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v11

    aget-wide v20, v5, v30

    sub-long v20, v11, v20

    aput-wide v20, v4, v30

    const/4 v15, 0x4

    invoke-virtual {v3, v15}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    aget v15, v8, v30

    move-wide/from16 v20, v6

    int-to-long v6, v15

    add-long v6, v16, v6

    add-int/lit8 v15, v30, 0x1

    move-object/from16 v16, v2

    move-wide/from16 v17, v11

    move v11, v15

    move/from16 v2, p2

    move-object v12, v4

    move-object v15, v5

    move-wide v4, v6

    move-wide/from16 v6, v20

    goto :goto_1b

    :cond_36
    const-string v0, "Unhandled indirect reference"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_37
    move-wide/from16 v20, v6

    move-object v4, v12

    move-object v5, v15

    move-object/from16 v2, v16

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v6, Landroidx/media3/extractor/ChunkIndex;

    invoke-direct {v6, v8, v2, v4, v5}, Landroidx/media3/extractor/ChunkIndex;-><init>([I[J[J[J)V

    invoke-static {v3, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    iget-object v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/extractor/SeekMap;

    invoke-interface {v3, v2}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    goto/16 :goto_20

    :cond_38
    const v2, 0x656d7367

    if-ne v6, v2, :cond_40

    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    array-length v2, v2

    if-nez v2, :cond_39

    goto/16 :goto_20

    :cond_39
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    invoke-static {v2}, Landroidx/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_3b

    const/4 v11, 0x1

    if-eq v2, v11, :cond_3a

    const-string v3, "Skipping unsupported emsg version: "

    invoke-static {v3, v2, v15}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$2(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_20

    :cond_3a
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    sget-object v12, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v8, 0xf4240

    invoke-static/range {v6 .. v12}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v15

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    invoke-static/range {v6 .. v12}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v12, v10

    move-wide v10, v8

    move-wide v8, v4

    move-wide v4, v15

    move-wide v15, v8

    goto :goto_1d

    :cond_3b
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v19

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v15

    sget-object v21, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v17, 0xf4240

    invoke-static/range {v15 .. v21}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    iget-wide v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    cmp-long v11, v8, v4

    if-eqz v11, :cond_3c

    add-long/2addr v8, v6

    goto :goto_1c

    :cond_3c
    move-wide v8, v4

    :goto_1c
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    invoke-static/range {v15 .. v21}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v11

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v15

    move-wide/from16 v31, v11

    move-object v12, v10

    move-wide v10, v15

    move-wide v15, v4

    move-wide v4, v8

    move-wide v8, v6

    move-wide/from16 v6, v31

    :goto_1d
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v13

    new-array v13, v13, [B

    move-wide/from16 v17, v15

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v15

    const/4 v1, 0x0

    invoke-virtual {v3, v1, v15, v13}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    new-instance v1, Landroidx/media3/extractor/metadata/emsg/EventMessage;

    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->eventMessageEncoder:Lcom/tinder/StateMachine;

    iget-object v15, v3, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast v15, Ljava/io/DataOutputStream;

    iget-object v3, v3, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v3, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    :try_start_0
    invoke-virtual {v15, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v15, v12}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v15, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {v15, v10, v11}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {v15, v13}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v15}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    iget-object v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    array-length v6, v3

    const/4 v7, 0x0

    :goto_1e
    if-ge v7, v6, :cond_3d

    aget-object v10, v3, v7

    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-interface {v10, v1, v2, v13}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    :cond_3d
    cmp-long v1, v4, v17

    if-nez v1, :cond_3e

    new-instance v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    const/4 v11, 0x1

    invoke-direct {v1, v8, v9, v2, v11}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;-><init>(JIZ)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    goto :goto_20

    :cond_3e
    invoke-virtual {v14}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3f

    new-instance v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    const/4 v13, 0x0

    invoke-direct {v1, v4, v5, v2, v13}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;-><init>(JIZ)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    goto :goto_20

    :cond_3f
    iget-object v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media3/extractor/TrackOutput;

    array-length v3, v1

    const/4 v13, 0x0

    :goto_1f
    if-ge v13, v3, :cond_40

    aget-object v15, v1, v13

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x1

    move/from16 v19, v2

    move-wide/from16 v16, v4

    invoke-interface/range {v15 .. v21}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1f

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_40
    :goto_20
    move-object/from16 v1, p1

    goto :goto_21

    :cond_41
    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    :goto_21
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded$1(J)V

    goto/16 :goto_0

    :cond_42
    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    iget-object v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    if-nez v2, :cond_44

    iget-object v2, v3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/16 v6, 0x8

    const/4 v11, 0x1

    const/4 v13, 0x0

    invoke-interface {v1, v13, v11, v2, v6}, Landroidx/media3/extractor/ExtractorInput;->readFully(IZ[BI)Z

    move-result v2

    if-nez v2, :cond_43

    invoke-virtual {v7, v13}, Landroidx/recyclerview/widget/AdapterHelper;->flushQueueDownToSize(I)V

    const/16 v20, -0x1

    return v20

    :cond_43
    iput v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    invoke-virtual {v3, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    iput-wide v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    iput v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    :cond_44
    iget-wide v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    const-wide/16 v9, 0x1

    cmp-long v2, v6, v9

    if-nez v2, :cond_45

    iget-object v2, v3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/16 v6, 0x8

    invoke-interface {v1, v2, v6, v6}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v2, v6

    iput v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    iput-wide v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    goto :goto_22

    :cond_45
    const-wide/16 v9, 0x0

    cmp-long v2, v6, v9

    if-nez v2, :cond_47

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v6

    const-wide/16 v9, -0x1

    cmp-long v2, v6, v9

    if-nez v2, :cond_46

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_46

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/container/Mp4Box$ContainerBox;

    iget-wide v6, v2, Landroidx/media3/container/Mp4Box$ContainerBox;->endPosition:J

    :cond_46
    cmp-long v2, v6, v9

    if-eqz v2, :cond_47

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v9

    sub-long/2addr v6, v9

    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v9, v2

    add-long/2addr v6, v9

    iput-wide v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    :cond_47
    :goto_22
    iget-wide v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v9, v2

    cmp-long v2, v6, v9

    if-ltz v2, :cond_54

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v9, v2

    sub-long/2addr v6, v9

    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    const v9, 0x6d646174

    const v10, 0x6d6f6f66

    if-eq v2, v10, :cond_48

    if-ne v2, v9, :cond_49

    :cond_48
    iget-boolean v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    if-nez v2, :cond_49

    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v11, Landroidx/media3/extractor/SeekMap$Unseekable;

    iget-wide v12, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    invoke-direct {v11, v12, v13, v6, v7}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(JJ)V

    invoke-interface {v2, v11}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    const/4 v11, 0x1

    iput-boolean v11, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    :cond_49
    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    if-ne v2, v10, :cond_4a

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v11, 0x0

    :goto_23
    if-ge v11, v2, :cond_4a

    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v12, v12, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-wide v6, v12, Landroidx/media3/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    iput-wide v6, v12, Landroidx/media3/extractor/mp4/TrackFragment;->dataPosition:J

    add-int/lit8 v11, v11, 0x1

    goto :goto_23

    :cond_4a
    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    if-ne v2, v9, :cond_4b

    const/4 v8, 0x0

    iput-object v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-wide v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v6, v2

    iput-wide v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    const/4 v2, 0x2

    iput v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto/16 :goto_0

    :cond_4b
    const v6, 0x6d6f6f76

    if-eq v2, v6, :cond_52

    const v6, 0x7472616b

    if-eq v2, v6, :cond_52

    const v6, 0x6d646961

    if-eq v2, v6, :cond_52

    const v6, 0x6d696e66

    if-eq v2, v6, :cond_52

    const v6, 0x7374626c

    if-eq v2, v6, :cond_52

    if-eq v2, v10, :cond_52

    const v6, 0x74726166

    if-eq v2, v6, :cond_52

    const v6, 0x6d766578

    if-eq v2, v6, :cond_52

    const v6, 0x65647473

    if-ne v2, v6, :cond_4c

    goto/16 :goto_25

    :cond_4c
    const v5, 0x68646c72    # 4.3148E24f

    const-wide/32 v6, 0x7fffffff

    if-eq v2, v5, :cond_4f

    const v5, 0x6d646864

    if-eq v2, v5, :cond_4f

    const v5, 0x6d766864

    if-eq v2, v5, :cond_4f

    if-eq v2, v4, :cond_4f

    const v4, 0x73747364

    if-eq v2, v4, :cond_4f

    const v4, 0x73747473

    if-eq v2, v4, :cond_4f

    const v4, 0x63747473

    if-eq v2, v4, :cond_4f

    const v4, 0x73747363

    if-eq v2, v4, :cond_4f

    const v4, 0x7374737a

    if-eq v2, v4, :cond_4f

    const v4, 0x73747a32

    if-eq v2, v4, :cond_4f

    const v4, 0x7374636f

    if-eq v2, v4, :cond_4f

    const v4, 0x636f3634

    if-eq v2, v4, :cond_4f

    const v4, 0x73747373

    if-eq v2, v4, :cond_4f

    const v4, 0x74666474

    if-eq v2, v4, :cond_4f

    const v4, 0x74666864

    if-eq v2, v4, :cond_4f

    const v4, 0x746b6864

    if-eq v2, v4, :cond_4f

    const v4, 0x74726578

    if-eq v2, v4, :cond_4f

    const v4, 0x7472756e

    if-eq v2, v4, :cond_4f

    const v4, 0x70737368    # 3.013775E29f

    if-eq v2, v4, :cond_4f

    const v4, 0x7361697a

    if-eq v2, v4, :cond_4f

    const v4, 0x7361696f

    if-eq v2, v4, :cond_4f

    const v4, 0x73656e63

    if-eq v2, v4, :cond_4f

    const v4, 0x75756964

    if-eq v2, v4, :cond_4f

    const v4, 0x73626770

    if-eq v2, v4, :cond_4f

    const v4, 0x73677064

    if-eq v2, v4, :cond_4f

    const v4, 0x656c7374

    if-eq v2, v4, :cond_4f

    const v4, 0x6d656864

    if-eq v2, v4, :cond_4f

    const v4, 0x656d7367

    if-ne v2, v4, :cond_4d

    goto :goto_24

    :cond_4d
    iget-wide v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    cmp-long v2, v2, v6

    if-gtz v2, :cond_4e

    const/4 v8, 0x0

    iput-object v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomData:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v11, 0x1

    iput v11, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto/16 :goto_0

    :cond_4e
    const-string v0, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_4f
    :goto_24
    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    const/16 v5, 0x8

    if-ne v2, v5, :cond_51

    iget-wide v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    cmp-long v2, v8, v6

    if-gtz v2, :cond_50

    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    iget-wide v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    long-to-int v4, v6

    invoke-direct {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v3, v3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget-object v4, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v13, 0x0

    invoke-static {v3, v13, v4, v13, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomData:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v11, 0x1

    iput v11, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto/16 :goto_0

    :cond_50
    const-string v0, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_51
    const-string v0, "Leaf atom defines extended atom size (unsupported)."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_52
    :goto_25
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-wide v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v2, v6

    const-wide/16 v6, 0x8

    sub-long/2addr v2, v6

    new-instance v4, Landroidx/media3/container/Mp4Box$ContainerBox;

    iget v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-direct {v4, v6, v2, v3}, Landroidx/media3/container/Mp4Box$ContainerBox;-><init>(IJ)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_53

    invoke-virtual {v0, v2, v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded$1(J)V

    goto/16 :goto_0

    :cond_53
    const/4 v13, 0x0

    iput v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    iput v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    goto/16 :goto_0

    :cond_54
    const-string v0, "Atom size less than header length (unsupported)."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public final seek(JJ)V
    .locals 3

    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->resetFragmentInfo()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->reorderingSeiMessageQueue:Landroidx/recyclerview/widget/AdapterHelper;

    iget-object p1, p1, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Ljava/lang/Object;

    check-cast p1, Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->clear()V

    iput-wide p3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    return-void
.end method

.method public final sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroidx/media3/extractor/mp4/Sniffer;->sniffInternal(Landroidx/media3/extractor/ExtractorInput;ZZ)Landroidx/media3/extractor/SniffFailure;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object v2, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    :goto_0
    iput-object v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->lastSniffFailures:Lcom/google/common/collect/RegularImmutableList;

    if-nez p1, :cond_1

    return v0

    :cond_1
    return v1
.end method
