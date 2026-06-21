.class public final synthetic Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    iget v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    sget v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->$r8$clinit:I

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "insets"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->updateUiForSplitScreen(Z)V

    return-object p2

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/Controller;

    sget-boolean p1, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->updateInsets(Landroid/content/Context;Landroid/view/WindowInsets;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/Controller;->setScreenParameters(Z)V

    :cond_1
    :goto_0
    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
