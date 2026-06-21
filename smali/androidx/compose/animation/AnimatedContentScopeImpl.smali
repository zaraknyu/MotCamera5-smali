.class public final Landroidx/compose/animation/AnimatedContentScopeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/animation/AnimatedVisibilityScope;


# instance fields
.field public final synthetic $$delegate_0:Landroidx/compose/animation/AnimatedVisibilityScope;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/AnimatedVisibilityScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentScopeImpl;->$$delegate_0:Landroidx/compose/animation/AnimatedVisibilityScope;

    return-void
.end method


# virtual methods
.method public final animateEnterExit(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;)Landroidx/compose/ui/Modifier;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/AnimatedContentScopeImpl;->$$delegate_0:Landroidx/compose/animation/AnimatedVisibilityScope;

    invoke-interface {p0, p1, p2, p3}, Landroidx/compose/animation/AnimatedVisibilityScope;->animateEnterExit(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public final getTransition()Landroidx/compose/animation/core/Transition;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/AnimatedContentScopeImpl;->$$delegate_0:Landroidx/compose/animation/AnimatedVisibilityScope;

    invoke-interface {p0}, Landroidx/compose/animation/AnimatedVisibilityScope;->getTransition()Landroidx/compose/animation/core/Transition;

    move-result-object p0

    return-object p0
.end method
