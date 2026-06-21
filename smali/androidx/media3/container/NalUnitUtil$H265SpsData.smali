.class public final Landroidx/media3/container/NalUnitUtil$H265SpsData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final bitDepthChromaMinus8:I

.field public final bitDepthLumaMinus8:I

.field public final colorRange:I

.field public final colorSpace:I

.field public final colorTransfer:I

.field public final height:I

.field public final maxNumReorderPics:I

.field public final maxSubLayersMinus1:I

.field public final pixelWidthHeightRatio:F

.field public final profileTierLevel:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

.field public final width:I


# direct methods
.method public constructor <init>(ILandroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;IIIIFIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->maxSubLayersMinus1:I

    iput-object p2, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->profileTierLevel:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    iput p3, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->bitDepthLumaMinus8:I

    iput p4, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->bitDepthChromaMinus8:I

    iput p5, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->width:I

    iput p6, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->height:I

    iput p7, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->pixelWidthHeightRatio:F

    iput p8, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->maxNumReorderPics:I

    iput p9, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorSpace:I

    iput p10, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorRange:I

    iput p11, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorTransfer:I

    return-void
.end method
