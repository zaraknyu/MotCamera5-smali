.class public final Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;
.super Lcom/motorola/camera/ui/uicomponents/HeaderComponent;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/OnlineHelpWebView$OnTouchCallback;


# static fields
.field public static final mInflationStates:Ljava/util/List;


# instance fields
.field public mErrorImg:Landroid/widget/ImageButton;

.field public mErrorLayout:Landroid/widget/LinearLayout;

.field public mErrorTips:Landroid/widget/TextView;

.field public mErrorTitle:Landroid/widget/TextView;

.field public final mHandler:Landroid/os/Handler;

.field public mLoadingLayout:Landroid/widget/LinearLayout;

.field public mTopicType:I

.field public mTouchCount:I

.field public mUiOptionsOrig:I

.field public mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

.field public mWebViewLayout:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/OnlineHelpStates;->ONLINE_HELP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mInflationStates:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mUiOptionsOrig:I

    new-instance p1, Landroid/os/Handler;

    new-instance p2, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;

    const/16 v0, 0x8

    invoke-direct {p2, v0, p0}, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 1

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/OnlineHelpStates;->ONLINE_HELP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/OnlineHelpStates;->ONLINE_HELP_BACK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/OnlineHelpStates;->ONLINE_HELP_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/OnlineHelpStates;->ONLINE_HELP_OPENED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final inflateViewStub()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    const v1, 0x7f0a0321

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a0234

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f120350

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0a0232

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayCutout:Landroid/view/DisplayCutout;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a0323

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebViewLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a0326

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a0322

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mLoadingLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a031c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mErrorLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a031e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mErrorImg:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a0320

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mErrorTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a031f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mErrorTips:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a0324

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;->setTouchCallback(Lcom/motorola/camera/ui/widgets/OnlineHelpWebView$OnTouchCallback;)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0232

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mHandler:Landroid/os/Handler;

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0324

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;->LOADING:Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->updateState$1(Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;)V

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;I)V

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    const/4 p0, 0x2

    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onDestroy$1$1()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ONLINE_HELP_CLOSE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1, v0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraActivityWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v2, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mUiOptionsOrig:I

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    iget p0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mUiOptionsOrig:I

    invoke-virtual {v2, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_1
    const/16 p0, 0x200

    invoke-virtual {v0, p0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public final onTouchEvent()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mTouchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mTouchCount:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ONLINE_HELP_READING:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1, v0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mTouchCount:I

    :cond_0
    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/google/zxing/Result;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;I)V

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/OnlineHelpStates;->ONLINE_HELP_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ONLINE_HELP_FROM_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ONLINE_HELP_FROM_MODE"

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const-string v0, "ONLINE_HELP_FROM_MODE_EDIT"

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mTopicType:I

    goto :goto_1

    :cond_2
    :goto_0
    iput v2, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mTopicType:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_3
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/OnlineHelpStates;->ONLINE_HELP_BACK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, p0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x3

    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    return-void
.end method

.method public final updateState$1(Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mLoadingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mErrorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mErrorImg:Landroid/widget/ImageButton;

    const v0, 0x7f08024a

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mErrorTitle:Landroid/widget/TextView;

    const v0, 0x7f12034e

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mErrorTips:Landroid/widget/TextView;

    const p1, 0x7f12034f

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mLoadingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mErrorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mErrorImg:Landroid/widget/ImageButton;

    const v0, 0x7f080249

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mErrorTitle:Landroid/widget/TextView;

    const v0, 0x7f12034b

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mErrorTips:Landroid/widget/TextView;

    const p1, 0x7f12034c

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mLoadingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mErrorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mErrorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mLoadingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final viewStubInflationStates()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mInflationStates:Ljava/util/List;

    return-object p0
.end method
