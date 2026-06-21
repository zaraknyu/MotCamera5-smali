.class public final synthetic Le/E$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/compose/runtime/State;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;JJLandroidx/compose/ui/input/pointer/PointerInputScope;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Le/E$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/E$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/runtime/State;

    iput-wide p2, p0, Le/E$$ExternalSyntheticLambda1;->f$1:J

    iput-wide p4, p0, Le/E$$ExternalSyntheticLambda1;->f$2:J

    iput-object p6, p0, Le/E$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/runtime/State;Ljava/util/List;JJ)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Le/E$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/E$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/runtime/State;

    iput-object p2, p0, Le/E$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    iput-wide p3, p0, Le/E$$ExternalSyntheticLambda1;->f$1:J

    iput-wide p5, p0, Le/E$$ExternalSyntheticLambda1;->f$2:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget v0, p0, Le/E$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Le/E$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    const-string p1, "$this$Canvas"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/E$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/runtime/State;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {p1, v3, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v7

    cmpl-float p1, v7, v3

    if-lez p1, :cond_0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/geometry/Offset;

    iget-wide v2, v2, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v5

    shr-long/2addr v5, v4

    long-to-int v3, v5

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    mul-float/2addr v3, v2

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    iget-wide v5, v0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    const-wide v8, 0xffffffffL

    and-long/2addr v5, v8

    long-to-int v0, v5

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v5

    and-long/2addr v5, v8

    long-to-int v2, v5

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    mul-float/2addr v2, v0

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v5, v0

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v2, v0

    shl-long v4, v5, v4

    and-long/2addr v2, v8

    or-long v5, v4, v2

    const/16 v0, 0xc

    int-to-float v0, v0

    invoke-interface {v1, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v4

    const/4 v8, 0x0

    const/16 v9, 0x70

    iget-wide v2, p0, Le/E$$ExternalSyntheticLambda1;->f$1:J

    invoke-static/range {v1 .. v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    new-instance v8, Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/4 v0, 0x2

    int-to-float v0, v0

    invoke-interface {v1, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v9

    const/4 v12, 0x0

    const/16 v13, 0x1e

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v8 .. v13}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    const/16 v9, 0x60

    iget-wide v2, p0, Le/E$$ExternalSyntheticLambda1;->f$2:J

    invoke-static/range {v1 .. v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Le/E$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/runtime/State;

    check-cast v0, Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Le/E$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputScope;

    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/M;

    iget-wide v2, p1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    iget-wide v4, p0, Le/E$$ExternalSyntheticLambda1;->f$1:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v2

    iget-wide p0, p0, Le/E$$ExternalSyntheticLambda1;->f$2:J

    invoke-static {v2, v3, p0, p1}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide p0

    iget v2, v0, Le/M;->a:F

    neg-float v2, v2

    invoke-static {v2, p0, p1}, La/l;->a(FJ)J

    move-result-wide p0

    iget-wide v2, v0, Le/M;->d:J

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/SizeKt;->getCenter-uvyYCjk(J)J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide p0

    iget-object v0, v0, Le/M;->c:Ljava/util/List;

    const/16 v2, 0x1c

    int-to-float v2, v2

    check-cast v1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->getDensity()F

    move-result v1

    mul-float/2addr v1, v2

    mul-float/2addr v1, v1

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-ltz v3, :cond_2

    check-cast v4, Landroidx/compose/ui/geometry/Offset;

    iget-wide v6, v4, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    rem-int/lit8 v4, v5, 0x4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/geometry/Offset;

    iget-wide v8, v8, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v6

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-static {v8, v6, v7}, Landroidx/compose/ui/geometry/Offset;->times-tuRUvjQ(FJ)J

    move-result-wide v6

    invoke-static {p0, p1, v6, v7}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getDistanceSquared-impl(J)F

    move-result v6

    cmpg-float v6, v6, v1

    if-gez v6, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_2

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 p0, 0x0

    throw p0

    :cond_3
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_2
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
