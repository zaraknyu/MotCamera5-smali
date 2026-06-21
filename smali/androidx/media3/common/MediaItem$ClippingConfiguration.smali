.class public Landroidx/media3/common/MediaItem$ClippingConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final endPositionUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/extractor/PositionHolder;

    invoke-direct {v0}, Landroidx/media3/extractor/PositionHolder;-><init>()V

    new-instance v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;

    invoke-direct {v1, v0}, Landroidx/media3/common/MediaItem$ClippingConfiguration;-><init>(Landroidx/media3/extractor/PositionHolder;)V

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)V

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)V

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)V

    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)V

    const/4 v0, 0x5

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)V

    const/4 v0, 0x6

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/PositionHolder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget-wide v0, p1, Landroidx/media3/extractor/PositionHolder;->position:J

    iput-wide v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionUs:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionUs:J

    iget-wide p0, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionUs:J

    cmp-long p0, v1, p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 5

    const-wide/16 v0, 0x0

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionUs:J

    const/16 p0, 0x20

    ushr-long v3, v1, p0

    xor-long/2addr v1, v3

    long-to-int p0, v1

    add-int/2addr v0, p0

    mul-int/lit16 v0, v0, 0x745f

    return v0
.end method
