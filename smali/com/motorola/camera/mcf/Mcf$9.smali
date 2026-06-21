.class public final Lcom/motorola/camera/mcf/Mcf$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final val$arg1:I

.field public final val$obj1:Ljava/lang/Object;

.field public final val$obj2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/motorola/camera/mcf/Mcf$9;->$r8$classId:I

    iput-object p3, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$obj2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$obj1:Ljava/lang/Object;

    iput p1, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$arg1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/mcf/Mcf$9;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$arg1:I

    iput-object p2, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$obj2:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$obj1:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/mcf/Mcf$9;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$obj1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$obj2:Ljava/lang/Object;

    iput p3, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$arg1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/mcf/Mcf$9;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$obj1:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v1, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$obj2:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget p0, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$arg1:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->startSettling(Landroid/view/View;IZ)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$obj2:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    iget-object v1, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$obj1:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    iget p0, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$arg1:I

    invoke-virtual {v0, v1, p0}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->add(Landroid/content/Intent;I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$obj2:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$obj1:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Typeface;

    iget p0, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$arg1:I

    invoke-virtual {v0, v1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void

    :pswitch_2
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$smgetInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$fgetmControlListener(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing listener WeakReference for control event."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$smgetInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$fgetmControlListener(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/Mcf$OnControlListener;

    if-eqz v0, :cond_6

    const/4 v1, 0x2

    iget v2, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$arg1:I

    if-eqz v2, :cond_5

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v5, 0x4

    if-eq v2, v1, :cond_3

    const/4 v1, 0x5

    if-eq v2, v3, :cond_5

    if-eq v2, v5, :cond_2

    if-eq v2, v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Unknown RateControl input : "

    invoke-static {v3, v2, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    move v1, v4

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    goto :goto_0

    :cond_3
    move v1, v5

    goto :goto_0

    :cond_4
    move v1, v3

    :cond_5
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$obj2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$obj1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/McfMetadata;

    check-cast v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda8;

    invoke-virtual {v0, v2, v1, p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda8;->onFullFrameConfig(Ljava/lang/String;ILcom/motorola/camera/mcf/McfMetadata;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "postControlEventFromNative: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
