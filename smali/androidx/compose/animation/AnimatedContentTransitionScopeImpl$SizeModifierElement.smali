.class final Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/compose/ui/node/ModifierNodeElement;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u00030\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "androidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierElement",
        "S",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;",
        "animation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final scope:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

.field public final sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

.field public final sizeTransform:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/runtime/MutableState;Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierElement;->sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    iput-object p2, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierElement;->sizeTransform:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierElement;->scope:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 3

    new-instance v0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;

    invoke-direct {v0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iget-object v1, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierElement;->sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    iput-object v1, v0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    iget-object v1, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierElement;->sizeTransform:Landroidx/compose/runtime/MutableState;

    iput-object v1, v0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->sizeTransform:Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierElement;->scope:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    iput-object p0, v0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->scope:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    sget-wide v1, Landroidx/compose/animation/AnimatedContentKt;->UnspecifiedSize:J

    iput-wide v1, v0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->lastSize:J

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierElement;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierElement;

    iget-object v0, p1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierElement;->sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    iget-object v1, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierElement;->sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierElement;->sizeTransform:Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierElement;->sizeTransform:Landroidx/compose/runtime/MutableState;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierElement;->scope:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierElement;->sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierElement;->sizeTransform:Landroidx/compose/runtime/MutableState;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 1

    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;

    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierElement;->sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    iput-object v0, p1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->sizeAnimation:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierElement;->sizeTransform:Landroidx/compose/runtime/MutableState;

    iput-object v0, p1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->sizeTransform:Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierElement;->scope:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    iput-object p0, p1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->scope:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    return-void
.end method
