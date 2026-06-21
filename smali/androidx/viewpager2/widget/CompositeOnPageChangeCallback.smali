.class public final Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mCallbacks:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->$r8$classId:I

    iput-object p2, p0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    iget v0, p0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/lang/Object;

    check-cast p0, Lcom/google/mlkit/vision/barcode/internal/zzj;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/mlkit/vision/barcode/internal/zzj;->updateFragmentMaxLifecycle(Z)V

    return-void

    :pswitch_1
    :try_start_0
    iget-object p0, p0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Adding and removing callbacks during dispatch to callbacks is not supported"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    iget v0, p0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->$r8$classId:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    return-void

    :sswitch_0
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    iget-object p0, p0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/OffsetApplier;

    invoke-virtual {p0, p2, p1}, Landroidx/compose/runtime/OffsetApplier;->onPageScrolled(FI)V

    return-void

    :sswitch_1
    :try_start_0
    iget-object p0, p0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Adding and removing callbacks during dispatch to callbacks is not supported"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPageSelected(I)V
    .locals 2

    iget v0, p0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    return-void

    :pswitch_0
    const v0, 0x7f1202ca

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f1202cb

    goto :goto_0

    :cond_1
    const v0, 0x7f1202c9

    :cond_2
    :goto_0
    iget-object p0, p0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/AirGestureViewPagerPreference;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/AirGestureViewPagerPreference;->summary:Landroid/widget/TextView;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    return-void

    :pswitch_1
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    iget-object p0, p0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mShowingPage:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->updateButtonForRtl()V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mPreviousButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_5

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mShowingPage:I

    if-lez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/4 v0, 0x4

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mNextButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_7

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mShowingPage:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_6

    const p0, 0x7f080384

    goto :goto_2

    :cond_6
    const p0, 0x7f080387

    :goto_2
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_7
    return-void

    :pswitch_2
    iget-object p0, p0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/lang/Object;

    check-cast p0, Lcom/google/mlkit/vision/barcode/internal/zzj;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/mlkit/vision/barcode/internal/zzj;->updateFragmentMaxLifecycle(Z)V

    return-void

    :pswitch_3
    :try_start_0
    iget-object p0, p0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_8
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Adding and removing callbacks during dispatch to callbacks is not supported"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
