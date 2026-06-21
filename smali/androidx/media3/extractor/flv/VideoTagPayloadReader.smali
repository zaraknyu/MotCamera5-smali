.class public final Landroidx/media3/extractor/flv/VideoTagPayloadReader;
.super Landroidx/media3/common/BasePlayer;
.source "SourceFile"


# instance fields
.field public frameType:I

.field public hasOutputFormat:Z

.field public hasOutputKeyframe:Z

.field public final nalLength:Landroidx/media3/common/util/ParsableByteArray;

.field public final nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

.field public nalUnitLengthFieldLength:I


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/TrackOutput;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroidx/media3/common/BasePlayer;-><init>(ILjava/lang/Object;)V

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    sget-object v0, Landroidx/media3/container/ObuParser;->NAL_START_CODE:[B

    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->nalLength:Landroidx/media3/common/util/ParsableByteArray;

    return-void
.end method
