.class public final Landroidx/databinding/ViewDataBinding$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/databinding/ViewDataBinding$6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onViewDetachedFromWindow$androidx$databinding$ViewDataBinding$6(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private final onViewDetachedFromWindow$com$google$android$material$internal$ViewUtils$3(Landroid/view/View;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Landroidx/databinding/ViewDataBinding$6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    sget-object p0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api20Impl;->requestApplyInsets(Landroid/view/View;)V

    return-void

    :pswitch_0
    if-eqz p1, :cond_0

    const v0, 0x7f0a0126

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/databinding/ViewDataBinding;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRebindRunnable:Landroidx/lifecycle/LiveData$1;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData$1;->run()V

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget p0, p0, Landroidx/databinding/ViewDataBinding$6;->$r8$classId:I

    return-void
.end method
