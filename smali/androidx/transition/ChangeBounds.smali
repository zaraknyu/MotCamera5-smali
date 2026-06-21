.class public final Landroidx/transition/ChangeBounds;
.super Landroidx/transition/Transition;
.source "SourceFile"


# static fields
.field public static final BOTTOM_RIGHT_ONLY_PROPERTY:Landroidx/transition/ViewUtils$1;

.field public static final BOTTOM_RIGHT_PROPERTY:Landroidx/transition/ViewUtils$1;

.field public static final POSITION_PROPERTY:Landroidx/transition/ViewUtils$1;

.field public static final TOP_LEFT_ONLY_PROPERTY:Landroidx/transition/ViewUtils$1;

.field public static final TOP_LEFT_PROPERTY:Landroidx/transition/ViewUtils$1;

.field public static final sTransitionProperties:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "android:changeBounds:windowX"

    const-string v1, "android:changeBounds:windowY"

    const-string v2, "android:changeBounds:bounds"

    const-string v3, "android:changeBounds:clip"

    const-string v4, "android:changeBounds:parent"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    new-instance v0, Landroidx/transition/ViewUtils$1;

    const/4 v1, 0x2

    const-class v2, Landroid/graphics/PointF;

    const-string/jumbo v3, "topLeft"

    invoke-direct {v0, v2, v3, v1}, Landroidx/transition/ViewUtils$1;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Landroidx/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroidx/transition/ViewUtils$1;

    new-instance v0, Landroidx/transition/ViewUtils$1;

    const/4 v1, 0x3

    const-string v4, "bottomRight"

    invoke-direct {v0, v2, v4, v1}, Landroidx/transition/ViewUtils$1;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroidx/transition/ViewUtils$1;

    new-instance v0, Landroidx/transition/ViewUtils$1;

    const/4 v1, 0x4

    invoke-direct {v0, v2, v4, v1}, Landroidx/transition/ViewUtils$1;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroidx/transition/ViewUtils$1;

    new-instance v0, Landroidx/transition/ViewUtils$1;

    const/4 v1, 0x5

    invoke-direct {v0, v2, v3, v1}, Landroidx/transition/ViewUtils$1;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Landroidx/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroidx/transition/ViewUtils$1;

    new-instance v0, Landroidx/transition/ViewUtils$1;

    const-string/jumbo v1, "position"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v1, v3}, Landroidx/transition/ViewUtils$1;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Landroidx/transition/ChangeBounds;->POSITION_PROPERTY:Landroidx/transition/ViewUtils$1;

    return-void
.end method

.method public static captureValues(Landroidx/transition/TransitionValues;)V
    .locals 6

    iget-object v0, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v1, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v0, "android:changeBounds:bounds"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const-string v0, "android:changeBounds:parent"

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0

    invoke-static {p1}, Landroidx/transition/ChangeBounds;->captureValues(Landroidx/transition/TransitionValues;)V

    return-void
.end method

.method public final captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 0

    invoke-static {p1}, Landroidx/transition/ChangeBounds;->captureValues(Landroidx/transition/TransitionValues;)V

    return-void
.end method

.method public final createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 18

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v1, :cond_10

    iget-object v1, v1, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v3, v2, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    const-string v4, "android:changeBounds:parent"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_10

    if-nez v4, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v2, v2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    const-string v4, "android:changeBounds:bounds"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    iget v8, v5, Landroid/graphics/Rect;->top:I

    iget v9, v4, Landroid/graphics/Rect;->top:I

    iget v10, v5, Landroid/graphics/Rect;->right:I

    iget v11, v4, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v12, v10, v6

    sub-int v13, v5, v8

    sub-int v14, v11, v7

    sub-int v15, v4, v9

    const-string v0, "android:changeBounds:clip"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    const/4 v3, 0x1

    const/16 v16, 0x0

    if-eqz v12, :cond_2

    if-nez v13, :cond_3

    :cond_2
    if-eqz v14, :cond_7

    if-eqz v15, :cond_7

    :cond_3
    if-ne v6, v7, :cond_4

    if-eq v8, v9, :cond_5

    :cond_4
    move/from16 v16, v3

    :cond_5
    if-ne v10, v11, :cond_6

    if-eq v5, v4, :cond_7

    :cond_6
    add-int/lit8 v16, v16, 0x1

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    :cond_8
    if-nez v1, :cond_a

    if-eqz v0, :cond_a

    :cond_9
    add-int/lit8 v16, v16, 0x1

    :cond_a
    move/from16 v0, v16

    if-lez v0, :cond_10

    sget-object v1, Landroidx/transition/ViewUtils;->TRANSITION_ALPHA:Landroidx/transition/ViewUtils$1;

    invoke-virtual {v2, v6, v8, v10, v5}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    if-ne v12, v14, :cond_b

    if-ne v13, v15, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/Transition$1;

    int-to-float v4, v6

    int-to-float v5, v8

    int-to-float v6, v7

    int-to-float v7, v9

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5, v6, v7}, Landroidx/transition/Transition$1;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v1

    sget-object v4, Landroidx/transition/ChangeBounds;->POSITION_PROPERTY:Landroidx/transition/ViewUtils$1;

    invoke-static {v2, v4, v1}, Landroidx/transition/ObjectAnimatorUtils$Api21Impl;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    new-instance v1, Landroidx/transition/ChangeBounds$ViewBounds;

    invoke-direct {v1, v2}, Landroidx/transition/ChangeBounds$ViewBounds;-><init>(Landroid/view/View;)V

    iget-object v12, v0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/Transition$1;

    int-to-float v6, v6

    int-to-float v8, v8

    int-to-float v7, v7

    int-to-float v9, v9

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v8, v7, v9}, Landroidx/transition/Transition$1;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v6

    sget-object v7, Landroidx/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroidx/transition/ViewUtils$1;

    invoke-static {v1, v7, v6}, Landroidx/transition/ObjectAnimatorUtils$Api21Impl;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v7, v0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/Transition$1;

    int-to-float v8, v10

    int-to-float v5, v5

    int-to-float v9, v11

    int-to-float v4, v4

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v5, v9, v4}, Landroidx/transition/Transition$1;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v4

    sget-object v5, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroidx/transition/ViewUtils$1;

    invoke-static {v1, v5, v4}, Landroidx/transition/ObjectAnimatorUtils$Api21Impl;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    filled-new-array {v6, v4}, [Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v4, Landroidx/transition/ChangeBounds$6;

    invoke-direct {v4, v1}, Landroidx/transition/ChangeBounds$6;-><init>(Landroidx/transition/ChangeBounds$ViewBounds;)V

    invoke-virtual {v5, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v1, v5

    goto :goto_1

    :cond_c
    move-object/from16 v0, p0

    if-ne v6, v7, :cond_e

    if-eq v8, v9, :cond_d

    goto :goto_0

    :cond_d
    iget-object v1, v0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/Transition$1;

    int-to-float v6, v10

    int-to-float v5, v5

    int-to-float v7, v11

    int-to-float v4, v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v5, v7, v4}, Landroidx/transition/Transition$1;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v1

    sget-object v4, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroidx/transition/ViewUtils$1;

    invoke-static {v2, v4, v1}, Landroidx/transition/ObjectAnimatorUtils$Api21Impl;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_1

    :cond_e
    :goto_0
    iget-object v1, v0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/Transition$1;

    int-to-float v4, v6

    int-to-float v5, v8

    int-to-float v6, v7

    int-to-float v7, v9

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5, v6, v7}, Landroidx/transition/Transition$1;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v1

    sget-object v4, Landroidx/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroidx/transition/ViewUtils$1;

    invoke-static {v2, v4, v1}, Landroidx/transition/ObjectAnimatorUtils$Api21Impl;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_f

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, v3}, Landroidx/transition/ViewGroupUtils$Api29Impl;->suppressLayout(Landroid/view/ViewGroup;Z)V

    invoke-virtual {v0}, Landroidx/transition/Transition;->getRootTransition()Landroidx/transition/Transition;

    move-result-object v0

    new-instance v3, Landroidx/transition/ChangeBounds$SuppressLayoutListener;

    invoke-direct {v3, v2}, Landroidx/transition/ChangeBounds$SuppressLayoutListener;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v3}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)V

    :cond_f
    return-object v1

    :cond_10
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTransitionProperties()[Ljava/lang/String;
    .locals 0

    sget-object p0, Landroidx/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    return-object p0
.end method
