.class public final Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/translation/ViewTranslationCallback;


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallback;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallback;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallback;

    return-void
.end method


# virtual methods
.method public final onClearTranslation(Landroid/view/View;)Z
    .locals 12

    const-string p0, "null cannot be cast to non-null type androidx.compose.ui.platform.AndroidComposeView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getContentCaptureManager$ui_release()Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;->SHOW_ORIGINAL:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    iput-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->translateStatus:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/IntObjectMap;

    move-result-object p0

    iget-object p1, p0, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    iget-object p0, p0, Landroidx/collection/IntObjectMap;->metadata:[J

    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    if-ltz v0, :cond_5

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    aget-wide v3, p0, v2

    not-long v5, v3

    const/4 v7, 0x7

    shl-long/2addr v5, v7

    and-long/2addr v5, v3

    const-wide v7, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v5, v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_4

    sub-int v5, v2, v0

    not-int v5, v5

    ushr-int/lit8 v5, v5, 0x1f

    const/16 v6, 0x8

    rsub-int/lit8 v5, v5, 0x8

    move v7, v1

    :goto_1
    if-ge v7, v5, :cond_3

    const-wide/16 v8, 0xff

    and-long/2addr v8, v3

    const-wide/16 v10, 0x80

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    shl-int/lit8 v8, v2, 0x3

    add-int/2addr v8, v7

    aget-object v8, p1, v8

    check-cast v8, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    iget-object v8, v8, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    iget-object v8, v8, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    iget-object v8, v8, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    sget-object v9, Landroidx/compose/ui/semantics/SemanticsProperties;->IsShowingTextSubstitution:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v8, v9}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x0

    if-nez v9, :cond_0

    move-object v9, v10

    :cond_0
    if-eqz v9, :cond_2

    sget-object v9, Landroidx/compose/ui/semantics/SemanticsActions;->ClearTextSubstitution:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v8, v9}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    move-object v10, v8

    :goto_2
    check-cast v10, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v10, :cond_2

    iget-object v8, v10, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    if-eqz v8, :cond_2

    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    :cond_2
    shr-long/2addr v3, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    if-ne v5, v6, :cond_5

    :cond_4
    if-eq v2, v0, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public final onHideTranslation(Landroid/view/View;)Z
    .locals 12

    const-string p0, "null cannot be cast to non-null type androidx.compose.ui.platform.AndroidComposeView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getContentCaptureManager$ui_release()Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;->SHOW_ORIGINAL:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    iput-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->translateStatus:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/IntObjectMap;

    move-result-object p0

    iget-object p1, p0, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    iget-object p0, p0, Landroidx/collection/IntObjectMap;->metadata:[J

    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    if-ltz v0, :cond_5

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    aget-wide v3, p0, v2

    not-long v5, v3

    const/4 v7, 0x7

    shl-long/2addr v5, v7

    and-long/2addr v5, v3

    const-wide v7, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v5, v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_4

    sub-int v5, v2, v0

    not-int v5, v5

    ushr-int/lit8 v5, v5, 0x1f

    const/16 v6, 0x8

    rsub-int/lit8 v5, v5, 0x8

    move v7, v1

    :goto_1
    if-ge v7, v5, :cond_3

    const-wide/16 v8, 0xff

    and-long/2addr v8, v3

    const-wide/16 v10, 0x80

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    shl-int/lit8 v8, v2, 0x3

    add-int/2addr v8, v7

    aget-object v8, p1, v8

    check-cast v8, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    iget-object v8, v8, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    iget-object v8, v8, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    iget-object v8, v8, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    sget-object v9, Landroidx/compose/ui/semantics/SemanticsProperties;->IsShowingTextSubstitution:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v8, v9}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x0

    if-nez v9, :cond_0

    move-object v9, v10

    :cond_0
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    sget-object v9, Landroidx/compose/ui/semantics/SemanticsActions;->ShowTextSubstitution:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v8, v9}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    move-object v10, v8

    :goto_2
    check-cast v10, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v10, :cond_2

    iget-object v8, v10, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    if-eqz v8, :cond_2

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v8, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    :cond_2
    shr-long/2addr v3, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    if-ne v5, v6, :cond_5

    :cond_4
    if-eq v2, v0, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public final onShowTranslation(Landroid/view/View;)Z
    .locals 12

    const-string p0, "null cannot be cast to non-null type androidx.compose.ui.platform.AndroidComposeView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getContentCaptureManager$ui_release()Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;->SHOW_TRANSLATED:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    iput-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->translateStatus:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/IntObjectMap;

    move-result-object p0

    iget-object p1, p0, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    iget-object p0, p0, Landroidx/collection/IntObjectMap;->metadata:[J

    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    if-ltz v0, :cond_5

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    aget-wide v3, p0, v2

    not-long v5, v3

    const/4 v7, 0x7

    shl-long/2addr v5, v7

    and-long/2addr v5, v3

    const-wide v7, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v5, v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_4

    sub-int v5, v2, v0

    not-int v5, v5

    ushr-int/lit8 v5, v5, 0x1f

    const/16 v6, 0x8

    rsub-int/lit8 v5, v5, 0x8

    move v7, v1

    :goto_1
    if-ge v7, v5, :cond_3

    const-wide/16 v8, 0xff

    and-long/2addr v8, v3

    const-wide/16 v10, 0x80

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    shl-int/lit8 v8, v2, 0x3

    add-int/2addr v8, v7

    aget-object v8, p1, v8

    check-cast v8, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    iget-object v8, v8, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    iget-object v8, v8, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    iget-object v8, v8, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    sget-object v9, Landroidx/compose/ui/semantics/SemanticsProperties;->IsShowingTextSubstitution:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v8, v9}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x0

    if-nez v9, :cond_0

    move-object v9, v10

    :cond_0
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    sget-object v9, Landroidx/compose/ui/semantics/SemanticsActions;->ShowTextSubstitution:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v8, v9}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    move-object v10, v8

    :goto_2
    check-cast v10, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v10, :cond_2

    iget-object v8, v10, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    if-eqz v8, :cond_2

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    :cond_2
    shr-long/2addr v3, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    if-ne v5, v6, :cond_5

    :cond_4
    if-eq v2, v0, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method
