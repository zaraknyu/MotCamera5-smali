.class public final Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ContextReceiver;
.super Landroidx/media3/common/BasePlayer;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;


# instance fields
.field public final synthetic $r8$classId:I

.field public final customLabelName:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public final declarationDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorNonRoot;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/name/Name;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ContextReceiver;->$r8$classId:I

    const-string/jumbo v0, "receiverType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Landroidx/media3/common/BasePlayer;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 2
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ContextReceiver;->declarationDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorNonRoot;

    .line 3
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ContextReceiver;->customLabelName:Lkotlin/reflect/jvm/internal/impl/name/Name;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/name/Name;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ContextReceiver;->$r8$classId:I

    const-string/jumbo v0, "receiverType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p2}, Landroidx/media3/common/BasePlayer;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 5
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ContextReceiver;->declarationDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorNonRoot;

    .line 6
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ContextReceiver;->customLabelName:Lkotlin/reflect/jvm/internal/impl/name/Name;

    return-void
.end method


# virtual methods
.method public final getCustomLabelName()Lkotlin/reflect/jvm/internal/impl/name/Name;
    .locals 1

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ContextReceiver;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ContextReceiver;->customLabelName:Lkotlin/reflect/jvm/internal/impl/name/Name;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ContextReceiver;->customLabelName:Lkotlin/reflect/jvm/internal/impl/name/Name;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ContextReceiver;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Ctx { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ContextReceiver;->declarationDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorNonRoot;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cxt { "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ContextReceiver;->declarationDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorNonRoot;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
