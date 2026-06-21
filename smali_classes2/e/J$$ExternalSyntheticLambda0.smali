.class public final synthetic Le/J$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Le/W0;

.field public final synthetic f$1:F

.field public final synthetic f$2:Landroidx/compose/ui/graphics/AndroidImageBitmap;


# direct methods
.method public synthetic constructor <init>(Le/W0;FLandroidx/compose/ui/graphics/AndroidImageBitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/J$$ExternalSyntheticLambda0;->f$0:Le/W0;

    iput p2, p0, Le/J$$ExternalSyntheticLambda0;->f$1:F

    iput-object p3, p0, Le/J$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Le/J$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    const-string v1, "$this$Canvas"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    iget-object v2, p0, Le/J$$ExternalSyntheticLambda0;->f$0:Le/W0;

    iget p0, p0, Le/J$$ExternalSyntheticLambda0;->f$1:F

    invoke-static {v2, p0, v1}, La/l;->a(Le/W0;FZ)Le/N;

    move-result-object p0

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/core/view/MenuHostHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    move-result-wide v2

    invoke-virtual {v1}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/ui/graphics/Canvas;->save()V

    :try_start_0
    iget-object v4, v1, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    iget-object p0, p0, Le/N;->d:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    const/16 v4, 0x3e

    invoke-static {p1, v0, p0, v4}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawImage-gbVJVH8$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/AndroidImageBitmap;Landroidx/compose/ui/graphics/ColorMatrixColorFilter;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v1, v2, v3}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v1, v2, v3}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    throw p0
.end method
