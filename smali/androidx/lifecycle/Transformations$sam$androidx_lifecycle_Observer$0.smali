.class public final synthetic Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic function:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    iput p2, p0, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;->$r8$classId:I

    iput-object p1, p0, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;->function:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p1, Landroidx/lifecycle/Observer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p0

    check-cast p1, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;

    invoke-virtual {p1}, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1

    :pswitch_0
    instance-of v0, p1, Landroidx/lifecycle/Observer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p0

    check-cast p1, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;

    invoke-virtual {p1}, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getFunctionDelegate()Lkotlin/Function;
    .locals 1

    iget v0, p0, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;->function:Lkotlin/jvm/functions/Function1;

    check-cast p0, Lkotlin/Function;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;->function:Lkotlin/jvm/functions/Function1;

    check-cast p0, Lkotlin/Function;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p0}, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic onChanged(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;->function:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;->function:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
