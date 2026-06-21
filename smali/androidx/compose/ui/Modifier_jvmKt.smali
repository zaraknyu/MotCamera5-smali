.class public abstract Landroidx/compose/ui/Modifier_jvmKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EmptyStackTraceElements:[Ljava/lang/StackTraceElement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    sput-object v0, Landroidx/compose/ui/Modifier_jvmKt;->EmptyStackTraceElements:[Ljava/lang/StackTraceElement;

    return-void
.end method

.method public static final composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;
    .locals 1

    new-instance v0, Landroidx/compose/ui/ComposedModifier;

    invoke-direct {v0, p1}, Landroidx/compose/ui/ComposedModifier;-><init>(Lkotlin/jvm/functions/Function3;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final materializeImpl(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 2

    sget-object v0, Landroidx/compose/ui/ComposedModifierKt$materializeImpl$1;->INSTANCE:Landroidx/compose/ui/ComposedModifierKt$materializeImpl$1;

    invoke-interface {p1, v0}, Landroidx/compose/ui/Modifier;->all(Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const v0, 0x48ae8da7

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    new-instance v0, Landroidx/compose/animation/core/InfiniteTransition$run$2;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, Landroidx/compose/animation/core/InfiniteTransition$run$2;-><init>(ILjava/lang/Object;)V

    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-interface {p1, v1, v0}, Landroidx/compose/ui/Modifier;->foldIn(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/Modifier;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object p1
.end method

.method public static final materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 1

    const v0, 0x1a365f2c

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static {p0, p1}, Landroidx/compose/ui/Modifier_jvmKt;->materializeImpl(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object p1
.end method
