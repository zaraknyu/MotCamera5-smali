.class public final Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;-><init>(I)V

    sput-object v0, Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;->INSTANCE:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public areCompatible(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public computeScaleFactor-H7hwNQA(JJ)J
    .locals 5

    iget p0, p0, Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;->$r8$classId:I

    const/16 v0, 0x20

    const-wide v1, 0xffffffffL

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    shr-long v3, p1, v0

    long-to-int p0, v3

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    shr-long v3, p3, v0

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    cmpg-float p0, p0, v3

    if-gtz p0, :cond_0

    and-long v3, p1, v1

    long-to-int p0, v3

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    and-long v3, p3, v1

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    cmpg-float p0, p0, v3

    if-gtz p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p3, p0

    shl-long p0, p1, v0

    and-long p2, p3, v1

    or-long/2addr p0, p2

    sget p2, Landroidx/compose/ui/layout/ScaleFactor;->$r8$clinit:I

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Landroidx/compose/ui/layout/ScaleFactorKt;->access$computeFillMinDimension-iLBOSCw(JJ)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p3, p0

    shl-long p0, p1, v0

    and-long p2, p3, v1

    or-long/2addr p0, p2

    sget p2, Landroidx/compose/ui/layout/ScaleFactor;->$r8$clinit:I

    :goto_0
    return-wide p0

    :pswitch_1
    shr-long v3, p3, v0

    long-to-int p0, v3

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    shr-long v3, p1, v0

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    div-float/2addr p0, v3

    and-long/2addr p3, v1

    long-to-int p3, p3

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    and-long/2addr p1, v1

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    div-float/2addr p3, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    int-to-long p2, p2

    shl-long/2addr p0, v0

    and-long/2addr p2, v1

    or-long/2addr p0, p2

    sget p2, Landroidx/compose/ui/layout/ScaleFactor;->$r8$clinit:I

    return-wide p0

    :pswitch_2
    invoke-static {p1, p2, p3, p4}, Landroidx/compose/ui/layout/ScaleFactorKt;->access$computeFillMinDimension-iLBOSCw(JJ)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p3, p0

    shl-long p0, p1, v0

    and-long p2, p3, v1

    or-long/2addr p0, p2

    sget p2, Landroidx/compose/ui/layout/ScaleFactor;->$r8$clinit:I

    return-wide p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSlotsToRetain(Landroidx/collection/Values;)V
    .locals 0

    invoke-virtual {p1}, Landroidx/collection/Values;->clear()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "ReusedSlotId"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
