.class public final Landroidx/media3/extractor/ts/PsExtractor$PesReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public dtsFlag:Z

.field public final pesPayloadReader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

.field public final pesScratch:Landroidx/media3/extractor/VorbisBitArray;

.field public ptsFlag:Z

.field public seenFirstDts:Z

.field public timeUs:J

.field public final timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;Landroidx/media3/common/util/TimestampAdjuster;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    iput-object p2, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    new-instance p1, Landroidx/media3/extractor/VorbisBitArray;

    const/16 p2, 0x40

    new-array v0, p2, [B

    invoke-direct {p1, p2, v0}, Landroidx/media3/extractor/VorbisBitArray;-><init>(I[B)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media3/extractor/VorbisBitArray;

    return-void
.end method
