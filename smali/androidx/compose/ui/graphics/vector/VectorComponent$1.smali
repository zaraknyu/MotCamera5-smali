.class public final Landroidx/compose/ui/graphics/vector/VectorComponent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/compose/ui/graphics/vector/VectorComponent;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/vector/VectorComponent;I)V
    .locals 0

    iput p2, p0, Landroidx/compose/ui/graphics/vector/VectorComponent$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent$1;->this$0:Landroidx/compose/ui/graphics/vector/VectorComponent;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent$1;->this$0:Landroidx/compose/ui/graphics/vector/VectorComponent;

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->root:Landroidx/compose/ui/graphics/vector/GroupComponent;

    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->rootScaleX:F

    iget p0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->rootScaleY:F

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/core/view/MenuHostHelper;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    move-result-wide v3

    invoke-virtual {v2}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v5

    invoke-interface {v5}, Landroidx/compose/ui/graphics/Canvas;->save()V

    :try_start_0
    iget-object v5, v2, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v1, p0, v6, v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->scale-0AR0LA0(FFJ)V

    invoke-virtual {v0, p1}, Landroidx/compose/ui/graphics/vector/GroupComponent;->draw(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v2, v3, v4}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v2, v3, v4}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    throw p0

    :pswitch_0
    check-cast p1, Landroidx/compose/ui/graphics/vector/VNode;

    const/4 p1, 0x1

    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent$1;->this$0:Landroidx/compose/ui/graphics/vector/VectorComponent;

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->isDirty:Z

    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->invalidateCallback:Lkotlin/jvm/internal/Lambda;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
