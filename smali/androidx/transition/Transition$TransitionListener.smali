.class public interface abstract Landroidx/transition/Transition$TransitionListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onTransitionCancel(Landroidx/transition/Transition;)V
.end method

.method public abstract onTransitionEnd(Landroidx/transition/Transition;)V
.end method

.method public abstract onTransitionPause()V
.end method

.method public abstract onTransitionResume()V
.end method

.method public abstract onTransitionStart(Landroidx/transition/Transition;)V
.end method

.method public onTransitionStart$1(Landroidx/transition/Transition;)V
    .locals 0

    invoke-interface {p0, p1}, Landroidx/transition/Transition$TransitionListener;->onTransitionStart(Landroidx/transition/Transition;)V

    return-void
.end method
