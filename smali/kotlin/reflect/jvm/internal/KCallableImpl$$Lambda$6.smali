.class public final Lkotlin/reflect/jvm/internal/KCallableImpl$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final arg$0:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;


# direct methods
.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;I)V
    .locals 0

    iput p2, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$$Lambda$6;->$r8$classId:I

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$$Lambda$6;->arg$0:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$$Lambda$6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$$Lambda$6;->arg$0:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$$Lambda$6;->arg$0:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
