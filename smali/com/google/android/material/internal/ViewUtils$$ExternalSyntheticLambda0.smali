.class public final synthetic Lcom/google/android/material/internal/ViewUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/material/internal/ViewUtils$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/material/internal/ViewUtils$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/google/android/material/internal/ViewUtils$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/android/material/internal/ViewUtils$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/material/internal/ViewUtils$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/google/android/material/internal/ViewUtils$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/google/android/material/internal/ViewUtils$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WatermarkFragment;->$r8$lambda$QNlHQRyNdJF1iNeOgmIQ_2GW_MA(Landroid/view/View;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/google/android/material/internal/ViewUtils$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/google/android/material/internal/ViewUtils$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/google/android/material/internal/ViewUtils$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/google/android/material/internal/ViewUtils$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_7
    iget-object p0, p0, Lcom/google/android/material/internal/ViewUtils$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
