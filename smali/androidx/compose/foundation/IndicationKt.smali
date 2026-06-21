.class public abstract Landroidx/compose/foundation/IndicationKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LocalIndication:Landroidx/compose/runtime/StaticProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/foundation/IndicationKt$LocalIndication$1;->INSTANCE:Landroidx/compose/foundation/IndicationKt$LocalIndication$1;

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/ProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Landroidx/compose/foundation/IndicationKt;->LocalIndication:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    return-void
.end method

.method public static final indication(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/Indication;)Landroidx/compose/ui/Modifier;
    .locals 3

    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/IndicationNodeFactory;

    if-eqz v1, :cond_1

    new-instance v0, Landroidx/compose/foundation/IndicationModifierElement;

    check-cast p1, Landroidx/compose/foundation/IndicationNodeFactory;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/IndicationModifierElement;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/IndicationNodeFactory;)V

    return-object v0

    :cond_1
    new-instance v1, Landroidx/compose/foundation/IndicationKt$indication$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, p0}, Landroidx/compose/foundation/IndicationKt$indication$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Landroidx/compose/ui/Modifier_jvmKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
