.class public interface abstract Landroidx/compose/animation/AnimatedVisibilityScope;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public animateEnterExit(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;)Landroidx/compose/ui/Modifier;
    .locals 1

    new-instance v0, Landroidx/compose/animation/AnimatedVisibilityScope$animateEnterExit$2;

    invoke-direct {v0, p0, p2, p3}, Landroidx/compose/animation/AnimatedVisibilityScope$animateEnterExit$2;-><init>(Landroidx/compose/animation/AnimatedVisibilityScope;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;)V

    invoke-static {p1, v0}, Landroidx/compose/ui/Modifier_jvmKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public abstract getTransition()Landroidx/compose/animation/core/Transition;
.end method
