.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $currentItemProvider:Landroidx/compose/runtime/MutableState;

.field public final synthetic $measurePolicy:Lkotlin/jvm/functions/Function2;

.field public final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field public final synthetic $prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1;->$prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1;->$measurePolicy:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1;->$currentItemProvider:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Landroidx/compose/runtime/saveable/SaveableStateHolder;

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p3

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne p3, v0, :cond_0

    new-instance p3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    new-instance v1, Landroidx/compose/material/ripple/RippleIndicationInstance$stateLayer$1;

    const/4 v2, 0x3

    iget-object v3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1;->$currentItemProvider:Landroidx/compose/runtime/MutableState;

    invoke-direct {v1, v3, v2}, Landroidx/compose/material/ripple/RippleIndicationInstance$stateLayer$1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    invoke-direct {p3, p1, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;-><init>(Landroidx/compose/runtime/saveable/SaveableStateHolder;Landroidx/compose/material/ripple/RippleIndicationInstance$stateLayer$1;)V

    invoke-virtual {p2, p3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_0
    check-cast p3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    new-instance p1, Landroidx/compose/ui/layout/SubcomposeLayoutState;

    new-instance v1, Lcom/tinder/StateMachine;

    invoke-direct {v1, p3}, Lcom/tinder/StateMachine;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;)V

    invoke-direct {p1, v1}, Landroidx/compose/ui/layout/SubcomposeLayoutState;-><init>(Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;)V

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1
    check-cast p1, Landroidx/compose/ui/layout/SubcomposeLayoutState;

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1;->$prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    const v3, 0xc2d16c3

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v3, 0x649383

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v3, Landroidx/compose/foundation/lazy/layout/PrefetchScheduler_androidKt;->RobolectricImpl:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;

    if-eqz v3, :cond_2

    const v4, 0x485a89af

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_0

    :cond_2
    const v3, 0x485b21a8    # 224390.62f

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalView:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_3

    if-ne v5, v0, :cond_4

    :cond_3
    new-instance v5, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;

    invoke-direct {v5, v3}, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    move-object v3, v5

    check-cast v3, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_0
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    filled-new-array {v1, p3, p1, v3}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {p2, p3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_5

    if-ne v6, v0, :cond_6

    :cond_5
    new-instance v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1$1$1;

    invoke-direct {v6, v1, p3, p1, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1$1$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;)V

    invoke-virtual {p2, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_6
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {v4, v6, p2}, Landroidx/compose/runtime/AnchoredGroupPath;->DisposableEffect([Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;)V

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_1

    :cond_7
    const v3, 0xc33a101

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_1
    sget v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchStateKt;->$r8$clinit:I

    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1;->$modifier:Landroidx/compose/ui/Modifier;

    if-eqz v1, :cond_9

    new-instance v3, Landroidx/compose/foundation/lazy/layout/TraversablePrefetchStateModifierElement;

    invoke-direct {v3, v1}, Landroidx/compose/foundation/lazy/layout/TraversablePrefetchStateModifierElement;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;)V

    invoke-interface {v2, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    move-object v2, v1

    :cond_9
    :goto_2
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1;->$measurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_a

    if-ne v3, v0, :cond_b

    :cond_a
    new-instance v3, Landroidx/compose/material3/ButtonKt$Button$2$1;

    const/4 v0, 0x5

    invoke-direct {v3, v0, p3, p0}, Landroidx/compose/material3/ButtonKt$Button$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_b
    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/16 p0, 0x8

    invoke-static {p1, v2, v3, p2, p0}, Landroidx/compose/ui/layout/ScaleFactorKt;->SubcomposeLayout(Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
