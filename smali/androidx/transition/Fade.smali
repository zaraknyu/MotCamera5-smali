.class public final Landroidx/transition/Fade;
.super Landroidx/transition/Transition;
.source "SourceFile"


# static fields
.field public static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field public final mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android:visibility:visibility"

    const-string v1, "android:visibility:parent"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/Fade;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Landroidx/transition/Fade;->mMode:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/transition/Fade;-><init>()V

    .line 2
    iput p1, p0, Landroidx/transition/Fade;->mMode:I

    return-void
.end method

.method public static captureValues$1(Landroidx/transition/TransitionValues;)V
    .locals 3

    iget-object v0, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v1, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    const-string v2, "android:visibility:visibility"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v2, "android:visibility:parent"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const-string p0, "android:visibility:screenLocation"

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getStartAlpha(Landroidx/transition/TransitionValues;F)F
    .locals 1

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    const-string v0, "android:fade:transitionAlpha"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/media3/exoplayer/RendererHolder;
    .locals 8

    new-instance v0, Landroidx/media3/exoplayer/RendererHolder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/media3/exoplayer/RendererHolder;->primaryRequiresReset:Z

    iput-boolean v1, v0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRequiresReset:Z

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string v4, "android:visibility:parent"

    const-string v5, "android:visibility:visibility"

    if-eqz p0, :cond_0

    iget-object v6, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v0, Landroidx/media3/exoplayer/RendererHolder;->index:I

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, v0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput v3, v0, Landroidx/media3/exoplayer/RendererHolder;->index:I

    iput-object v2, v0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    :goto_0
    if-eqz p1, :cond_1

    iget-object v6, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iput v3, v0, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    iput-object v2, v0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Ljava/lang/Object;

    :goto_1
    const/4 v2, 0x1

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    iget p0, v0, Landroidx/media3/exoplayer/RendererHolder;->index:I

    iget p1, v0, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    if-ne p0, p1, :cond_2

    iget-object v3, v0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, v0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Ljava/lang/Object;

    check-cast v4, Landroid/view/ViewGroup;

    if-ne v3, v4, :cond_2

    goto :goto_2

    :cond_2
    if-eq p0, p1, :cond_4

    if-nez p0, :cond_3

    iput-boolean v1, v0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRequiresReset:Z

    iput-boolean v2, v0, Landroidx/media3/exoplayer/RendererHolder;->primaryRequiresReset:Z

    return-object v0

    :cond_3
    if-nez p1, :cond_8

    iput-boolean v2, v0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRequiresReset:Z

    iput-boolean v2, v0, Landroidx/media3/exoplayer/RendererHolder;->primaryRequiresReset:Z

    return-object v0

    :cond_4
    iget-object p0, v0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Ljava/lang/Object;

    check-cast p0, Landroid/view/ViewGroup;

    if-nez p0, :cond_5

    iput-boolean v1, v0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRequiresReset:Z

    iput-boolean v2, v0, Landroidx/media3/exoplayer/RendererHolder;->primaryRequiresReset:Z

    return-object v0

    :cond_5
    iget-object p0, v0, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    check-cast p0, Landroid/view/ViewGroup;

    if-nez p0, :cond_8

    iput-boolean v2, v0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRequiresReset:Z

    iput-boolean v2, v0, Landroidx/media3/exoplayer/RendererHolder;->primaryRequiresReset:Z

    return-object v0

    :cond_6
    if-nez p0, :cond_7

    iget p0, v0, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    if-nez p0, :cond_7

    iput-boolean v2, v0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRequiresReset:Z

    iput-boolean v2, v0, Landroidx/media3/exoplayer/RendererHolder;->primaryRequiresReset:Z

    return-object v0

    :cond_7
    if-nez p1, :cond_8

    iget p0, v0, Landroidx/media3/exoplayer/RendererHolder;->index:I

    if-nez p0, :cond_8

    iput-boolean v1, v0, Landroidx/media3/exoplayer/RendererHolder;->secondaryRequiresReset:Z

    iput-boolean v2, v0, Landroidx/media3/exoplayer/RendererHolder;->primaryRequiresReset:Z

    :cond_8
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0

    invoke-static {p1}, Landroidx/transition/Fade;->captureValues$1(Landroidx/transition/TransitionValues;)V

    return-void
.end method

.method public final captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 1

    invoke-static {p1}, Landroidx/transition/Fade;->captureValues$1(Landroidx/transition/TransitionValues;)V

    iget-object p0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    const v0, 0x7f0a0499

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/transition/ViewUtils;->TRANSITION_ALPHA:Landroidx/transition/ViewUtils$1;

    invoke-virtual {p0}, Landroid/view/View;->getTransitionAlpha()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :cond_1
    :goto_0
    iget-object p0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    const-string p1, "android:fade:transitionAlpha"

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final createAnimation(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;
    .locals 2

    cmpl-float v0, p2, p3

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Landroidx/transition/ViewUtils;->TRANSITION_ALPHA:Landroidx/transition/ViewUtils$1;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionAlpha(F)V

    sget-object p2, Landroidx/transition/ViewUtils;->TRANSITION_ALPHA:Landroidx/transition/ViewUtils$1;

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    new-instance p3, Landroidx/transition/Fade$FadeAnimatorListener;

    invoke-direct {p3, p1}, Landroidx/transition/Fade$FadeAnimatorListener;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Landroidx/transition/Transition;->getRootTransition()Landroidx/transition/Transition;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)V

    return-object p2
.end method

.method public final createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static/range {p2 .. p3}, Landroidx/transition/Fade;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/media3/exoplayer/RendererHolder;

    move-result-object v4

    iget-boolean v5, v4, Landroidx/media3/exoplayer/RendererHolder;->primaryRequiresReset:Z

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroidx/media3/exoplayer/RendererHolder;->primaryRenderer:Ljava/lang/Object;

    check-cast v5, Landroid/view/ViewGroup;

    if-nez v5, :cond_1

    iget-object v5, v4, Landroidx/media3/exoplayer/RendererHolder;->secondaryRenderer:Ljava/lang/Object;

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    const/16 v16, 0x0

    goto/16 :goto_d

    :cond_1
    :goto_1
    iget-boolean v5, v4, Landroidx/media3/exoplayer/RendererHolder;->secondaryRequiresReset:Z

    iget v7, v0, Landroidx/transition/Fade;->mMode:I

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v5, :cond_4

    and-int/lit8 v1, v7, 0x1

    if-ne v1, v10, :cond_0

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    if-nez v2, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3, v11}, Landroidx/transition/Transition;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v4

    invoke-virtual {v0, v3, v11}, Landroidx/transition/Transition;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v3

    invoke-static {v4, v3}, Landroidx/transition/Fade;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/media3/exoplayer/RendererHolder;

    move-result-object v3

    iget-boolean v3, v3, Landroidx/media3/exoplayer/RendererHolder;->primaryRequiresReset:Z

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    sget-object v3, Landroidx/transition/ViewUtils;->TRANSITION_ALPHA:Landroidx/transition/ViewUtils$1;

    invoke-static {v2, v9}, Landroidx/transition/Fade;->getStartAlpha(Landroidx/transition/TransitionValues;F)F

    move-result v2

    invoke-virtual {v0, v1, v2, v8}, Landroidx/transition/Fade;->createAnimation(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0

    :cond_4
    iget v4, v4, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    const/4 v5, 0x2

    and-int/2addr v7, v5

    if-eq v7, v5, :cond_5

    goto :goto_0

    :cond_5
    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    iget-object v7, v2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    if-eqz v3, :cond_7

    iget-object v12, v3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_2

    :cond_7
    const/4 v12, 0x0

    :goto_2
    const v13, 0x7f0a03a5

    invoke-virtual {v7, v13}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    if-eqz v14, :cond_8

    move/from16 v22, v4

    move/from16 v18, v10

    move/from16 v17, v11

    const/4 v6, 0x0

    const/16 v16, 0x0

    goto/16 :goto_c

    :cond_8
    if-eqz v12, :cond_c

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    if-nez v14, :cond_9

    goto :goto_5

    :cond_9
    const/4 v14, 0x4

    if-ne v4, v14, :cond_a

    goto :goto_3

    :cond_a
    if-ne v7, v12, :cond_b

    :goto_3
    move v15, v11

    move-object v14, v12

    const/4 v12, 0x0

    goto :goto_6

    :cond_b
    move v15, v10

    const/4 v12, 0x0

    :goto_4
    const/4 v14, 0x0

    goto :goto_6

    :cond_c
    :goto_5
    if-eqz v12, :cond_b

    move v15, v11

    goto :goto_4

    :goto_6
    if-eqz v15, :cond_14

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    if-nez v15, :cond_d

    move/from16 v22, v4

    move/from16 v18, v10

    move v10, v11

    move/from16 v17, v10

    move-object v6, v14

    const/16 v16, 0x0

    move-object v14, v7

    goto/16 :goto_c

    :cond_d
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    instance-of v15, v15, Landroid/view/View;

    if-eqz v15, :cond_14

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    const/16 v16, 0x0

    invoke-virtual {v0, v15, v10}, Landroidx/transition/Transition;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v6

    move/from16 v17, v11

    invoke-virtual {v0, v15, v10}, Landroidx/transition/Transition;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v11

    invoke-static {v6, v11}, Landroidx/transition/Fade;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/media3/exoplayer/RendererHolder;

    move-result-object v6

    iget-boolean v6, v6, Landroidx/media3/exoplayer/RendererHolder;->primaryRequiresReset:Z

    if-nez v6, :cond_13

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v15}, Landroid/view/View;->getScrollX()I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    invoke-virtual {v15}, Landroid/view/View;->getScrollY()I

    move-result v12

    neg-int v12, v12

    int-to-float v12, v12

    invoke-virtual {v6, v11, v12}, Landroid/graphics/Matrix;->setTranslate(FF)V

    sget-object v11, Landroidx/transition/ViewUtils;->TRANSITION_ALPHA:Landroidx/transition/ViewUtils$1;

    invoke-virtual {v7, v6}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    new-instance v11, Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v15

    int-to-float v15, v15

    invoke-direct {v11, v9, v9, v12, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v6, v11}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v12, v11, Landroid/graphics/RectF;->left:F

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    iget v15, v11, Landroid/graphics/RectF;->top:F

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    move/from16 v18, v10

    iget v10, v11, Landroid/graphics/RectF;->right:F

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    iget v13, v11, Landroid/graphics/RectF;->bottom:F

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    new-instance v9, Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v9, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v7}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v19

    if-nez v5, :cond_f

    if-nez v19, :cond_e

    move/from16 v22, v4

    move-object/from16 v21, v14

    move-object/from16 v0, v16

    goto/16 :goto_9

    :cond_e
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    move-object/from16 v8, v19

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v19

    move/from16 v20, v5

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    move/from16 v5, v19

    goto :goto_7

    :cond_f
    move/from16 v20, v5

    move-object/from16 v8, v16

    move/from16 v5, v17

    :goto_7
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v19

    move-object/from16 v21, v14

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v19

    move/from16 v22, v4

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v4

    if-lez v14, :cond_10

    if-lez v4, :cond_10

    mul-int v3, v14, v4

    int-to-float v3, v3

    const/high16 v19, 0x49800000    # 1048576.0f

    div-float v3, v19, v3

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    int-to-float v0, v14

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v14, v11, Landroid/graphics/RectF;->left:F

    neg-float v14, v14

    iget v11, v11, Landroid/graphics/RectF;->top:F

    neg-float v11, v11

    invoke-virtual {v6, v14, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v6, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    new-instance v3, Landroid/graphics/Picture;

    invoke-direct {v3}, Landroid/graphics/Picture;-><init>()V

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v3}, Landroid/graphics/Picture;->endRecording()V

    invoke-static {v3}, Landroidx/transition/TransitionUtils$Api28Impl;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_8

    :cond_10
    move-object/from16 v0, v16

    :goto_8
    if-nez v20, :cond_11

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    invoke-virtual {v8, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_11
    :goto_9
    if-eqz v0, :cond_12

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_12
    sub-int v0, v10, v12

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sub-int v4, v13, v15

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v9, v0, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v9, v12, v15, v10, v13}, Landroid/view/View;->layout(IIII)V

    move-object v14, v9

    :goto_a
    move/from16 v10, v17

    move-object/from16 v6, v21

    goto :goto_c

    :cond_13
    move/from16 v22, v4

    move/from16 v18, v10

    move-object/from16 v21, v14

    invoke-virtual {v15}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_15

    const/4 v3, -0x1

    if-eq v0, v3, :cond_15

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    goto :goto_b

    :cond_14
    move/from16 v22, v4

    move/from16 v18, v10

    move/from16 v17, v11

    move-object/from16 v21, v14

    const/16 v16, 0x0

    :cond_15
    :goto_b
    move-object v14, v12

    goto :goto_a

    :goto_c
    if-eqz v14, :cond_1a

    if-nez v10, :cond_16

    iget-object v0, v2, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    const-string v3, "android:visibility:screenLocation"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v3, v0, v17

    aget v0, v0, v18

    const/4 v4, 0x2

    new-array v4, v4, [I

    invoke-virtual {v1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v5, v4, v17

    sub-int/2addr v3, v5

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {v14, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    aget v3, v4, v18

    sub-int/2addr v0, v3

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v14, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    :cond_16
    sget-object v0, Landroidx/transition/ViewUtils;->TRANSITION_ALPHA:Landroidx/transition/ViewUtils$1;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Landroidx/transition/Fade;->getStartAlpha(Landroidx/transition/TransitionValues;F)F

    move-result v2

    const/4 v4, 0x0

    move-object/from16 v3, p0

    invoke-virtual {v3, v14, v2, v4}, Landroidx/transition/Fade;->createAnimation(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v2

    if-nez v2, :cond_17

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Landroidx/transition/Fade;->getStartAlpha(Landroidx/transition/TransitionValues;F)F

    move-result v0

    invoke-virtual {v14, v0}, Landroid/view/View;->setTransitionAlpha(F)V

    :cond_17
    if-nez v10, :cond_19

    if-nez v2, :cond_18

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    return-object v2

    :cond_18
    const v0, 0x7f0a03a5

    invoke-virtual {v7, v0, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance v0, Landroidx/transition/Visibility$OverlayListener;

    invoke-direct {v0, v3, v1, v14, v7}, Landroidx/transition/Visibility$OverlayListener;-><init>(Landroidx/transition/Fade;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    invoke-virtual {v3}, Landroidx/transition/Transition;->getRootTransition()Landroidx/transition/Transition;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)V

    :cond_19
    return-object v2

    :cond_1a
    move-object/from16 v3, p0

    move-object/from16 v4, p3

    if-eqz v6, :cond_1d

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    sget-object v1, Landroidx/transition/ViewUtils;->TRANSITION_ALPHA:Landroidx/transition/ViewUtils$1;

    move/from16 v1, v17

    invoke-virtual {v6, v1}, Landroid/view/View;->setTransitionVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Landroidx/transition/Fade;->getStartAlpha(Landroidx/transition/TransitionValues;F)F

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {v3, v6, v2, v5}, Landroidx/transition/Fade;->createAnimation(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v2

    if-nez v2, :cond_1b

    invoke-static {v4, v1}, Landroidx/transition/Fade;->getStartAlpha(Landroidx/transition/TransitionValues;F)F

    move-result v1

    invoke-virtual {v6, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    :cond_1b
    if-eqz v2, :cond_1c

    new-instance v0, Landroidx/transition/Visibility$DisappearListener;

    move/from16 v1, v22

    invoke-direct {v0, v6, v1}, Landroidx/transition/Visibility$DisappearListener;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Landroidx/transition/Transition;->getRootTransition()Landroidx/transition/Transition;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)V

    return-object v2

    :cond_1c
    invoke-virtual {v6, v0}, Landroid/view/View;->setTransitionVisibility(I)V

    return-object v2

    :cond_1d
    :goto_d
    return-object v16
.end method

.method public final getTransitionProperties()[Ljava/lang/String;
    .locals 0

    sget-object p0, Landroidx/transition/Fade;->sTransitionProperties:[Ljava/lang/String;

    return-object p0
.end method

.method public final isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object p0, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    const-string v0, "android:visibility:visibility"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Landroidx/transition/Fade;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/media3/exoplayer/RendererHolder;

    move-result-object p0

    iget-boolean p1, p0, Landroidx/media3/exoplayer/RendererHolder;->primaryRequiresReset:Z

    if-eqz p1, :cond_3

    iget p1, p0, Landroidx/media3/exoplayer/RendererHolder;->index:I

    if-eqz p1, :cond_2

    iget p0, p0, Landroidx/media3/exoplayer/RendererHolder;->prewarmingState:I

    if-nez p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
