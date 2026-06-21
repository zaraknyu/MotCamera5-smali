.class public final synthetic Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->nextStep()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->nextStep()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mShowingPage:I

    if-lez p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mPager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p0, :cond_0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
