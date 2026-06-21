.class public final Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $specOnEnter:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$1$1;->$r8$classId:I

    iput-object p2, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$1$1;->$specOnEnter:Ljava/lang/Object;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$1$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    check-cast p2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    check-cast p3, Landroidx/compose/ui/geometry/Offset;

    iget-wide v0, p3, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    iget-object p0, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$1$1;->$specOnEnter:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    iget-wide p1, p2, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    new-instance p3, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {p3, p1, p2}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    invoke-interface {p0, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/ui/layout/MeasureScope;

    check-cast p2, Landroidx/compose/ui/layout/Measurable;

    check-cast p3, Landroidx/compose/ui/unit/Constraints;

    iget-wide v0, p3, Landroidx/compose/ui/unit/Constraints;->value:J

    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    iget p3, p2, Landroidx/compose/ui/layout/Placeable;->width:I

    iget v0, p2, Landroidx/compose/ui/layout/Placeable;->height:I

    new-instance v1, Landroidx/compose/runtime/Latch$await$2$2;

    iget-object p0, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$1$1;->$specOnEnter:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/animation/ContentTransform;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p2, p0}, Landroidx/compose/runtime/Latch$await$2$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    invoke-interface {p1, p3, v0, p0, v1}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
