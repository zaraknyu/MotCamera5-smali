.class public final synthetic Le/i$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(JLc/s1;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Le/i$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Le/i$$ExternalSyntheticLambda0;->f$1:J

    iput-object p3, p0, Le/i$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/drawscope/Stroke;J)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Le/i$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-wide p2, p0, Le/i$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget v0, p0, Le/i$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object v1, p0, Le/i$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Lc/s1;

    check-cast p1, Lc/w;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lc/Z;->a:Lc/Z;

    iget p1, v1, Lc/s1;->G:I

    invoke-static {p1}, Lc/Z;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lc/s1;->k()I

    move-result v0

    invoke-static {v0}, Lc/Z;->a(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lc/w;

    iget-wide v2, p0, Le/i$$ExternalSyntheticLambda0;->f$1:J

    invoke-direct {v1, v2, v3, p1, v0}, Lc/w;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v1

    :pswitch_0
    move-object v13, v1

    check-cast v13, Landroidx/compose/ui/graphics/drawscope/Stroke;

    move-object v4, p1

    check-cast v4, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    const-string p1, "$this$Canvas"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, v13, Landroidx/compose/ui/graphics/drawscope/Stroke;->width:F

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-interface {v4}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    mul-float/2addr v0, p1

    sub-float/2addr v1, v0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v5, v0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v7, p1

    shl-long/2addr v5, v3

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    or-long/2addr v5, v7

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v7, p1

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v0, p1

    shl-long v2, v7, v3

    and-long/2addr v0, v9

    or-long v11, v2, v0

    const/4 v7, 0x0

    const/high16 v8, 0x43b40000    # 360.0f

    iget-wide p0, p0, Le/i$$ExternalSyntheticLambda0;->f$1:J

    move-wide v9, v5

    move-wide v5, p0

    invoke-interface/range {v4 .. v13}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawArc-yD3GUKo(JFFJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
