.class public abstract Landroidx/compose/foundation/OverscrollKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LocalOverscrollFactory:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/foundation/ImageKt$Image$1$1;->INSTANCE$2:Landroidx/compose/foundation/ImageKt$Image$1$1;

    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function1;)V

    sput-object v1, Landroidx/compose/foundation/OverscrollKt;->LocalOverscrollFactory:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    return-void
.end method

.method public static final rememberOverscrollEffect(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;
    .locals 7

    const v0, 0x10dd5ab0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/foundation/OverscrollKt;->LocalOverscrollFactory:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_1

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v3, v2, :cond_2

    :cond_1
    new-instance v3, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    iget-object v2, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->context:Landroid/content/Context;

    iget-object v4, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->density:Landroidx/compose/ui/unit/Density;

    iget-wide v5, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->glowColor:J

    invoke-direct {v3, v2, v4, v5, v6}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;-><init>(Landroid/content/Context;Landroidx/compose/ui/unit/Density;J)V

    invoke-virtual {p0, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2
    check-cast v3, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v3
.end method
