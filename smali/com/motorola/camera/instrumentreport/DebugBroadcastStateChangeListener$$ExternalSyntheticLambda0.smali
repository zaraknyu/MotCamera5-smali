.class public final synthetic Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
