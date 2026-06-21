.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animateAppearance$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $layer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/layer/GraphicsLayer;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;I)V
    .locals 0

    iput p3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animateAppearance$2$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animateAppearance$2$1;->$layer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animateAppearance$2$1;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animateAppearance$2$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/animation/core/Animatable;

    invoke-virtual {p1}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animateAppearance$2$1;->$layer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setAlpha(F)V

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animateAppearance$2$1;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->onLayerPropertyChanged:Landroidx/compose/runtime/Pending$keyMap$2;

    invoke-virtual {p0}, Landroidx/compose/runtime/Pending$keyMap$2;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/animation/core/Animatable;

    invoke-virtual {p1}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animateAppearance$2$1;->$layer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setAlpha(F)V

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animateAppearance$2$1;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->onLayerPropertyChanged:Landroidx/compose/runtime/Pending$keyMap$2;

    invoke-virtual {p0}, Landroidx/compose/runtime/Pending$keyMap$2;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
