.class public final Landroidx/media3/extractor/mkv/DefaultEbmlReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public elementContentSize:J

.field public elementId:I

.field public elementState:I

.field public final masterElementsStack:Ljava/util/ArrayDeque;

.field public processor:Lcom/google/android/gms/tasks/zzs;

.field public final scratch:[B

.field public final varintReader:Landroidx/media3/extractor/mkv/VarintReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->scratch:[B

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    new-instance v0, Landroidx/media3/extractor/mkv/VarintReader;

    invoke-direct {v0}, Landroidx/media3/extractor/mkv/VarintReader;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->varintReader:Landroidx/media3/extractor/mkv/VarintReader;

    return-void
.end method


# virtual methods
.method public final readInteger(Landroidx/media3/extractor/ExtractorInput;I)J
    .locals 5

    iget-object p0, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->scratch:[B

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0, p2}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    const-wide/16 v1, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    const/16 p1, 0x8

    shl-long/2addr v1, p1

    aget-byte p1, p0, v0

    and-int/lit16 p1, p1, 0xff

    int-to-long v3, p1

    or-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method
