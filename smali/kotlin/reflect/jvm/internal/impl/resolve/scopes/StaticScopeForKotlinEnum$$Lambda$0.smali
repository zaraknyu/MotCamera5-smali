.class public final Lkotlin/reflect/jvm/internal/impl/resolve/scopes/StaticScopeForKotlinEnum$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final arg$0:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/StaticScopeForKotlinEnum;


# direct methods
.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/StaticScopeForKotlinEnum;I)V
    .locals 0

    iput p2, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/StaticScopeForKotlinEnum$$Lambda$0;->$r8$classId:I

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/StaticScopeForKotlinEnum$$Lambda$0;->arg$0:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/StaticScopeForKotlinEnum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/StaticScopeForKotlinEnum$$Lambda$0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/StaticScopeForKotlinEnum$$Lambda$0;->arg$0:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/StaticScopeForKotlinEnum;

    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/StaticScopeForKotlinEnum;->enumEntriesCanBeUsed:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/StaticScopeForKotlinEnum;->containingClass:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory;->createEnumEntriesProperty(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_0
    return-object p0

    :pswitch_0
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/StaticScopeForKotlinEnum$$Lambda$0;->arg$0:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/StaticScopeForKotlinEnum;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/StaticScopeForKotlinEnum;->containingClass:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory;->createEnumValueOfMethod(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl;

    move-result-object v0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory;->createEnumValuesMethod(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl;

    move-result-object p0

    filled-new-array {v0, p0}, [Lkotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
