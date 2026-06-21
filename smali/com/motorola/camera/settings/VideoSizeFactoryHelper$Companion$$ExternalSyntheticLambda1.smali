.class public final synthetic Lcom/motorola/camera/settings/VideoSizeFactoryHelper$Companion$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/settings/VideoSizeFactoryHelper$Companion$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/settings/VideoSizeFactoryHelper$Companion$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Lcom/motorola/camera/settings/VideoSizeFactoryHelper$Companion$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/settings/VideoSizeFactoryHelper$Companion$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function1;

    check-cast p0, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p0, p1}, Landroidx/room/TransactorKt$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
