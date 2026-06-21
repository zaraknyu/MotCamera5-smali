.class public final Lkotlin/reflect/jvm/internal/KPackageImpl$Data;
.super Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$Data;
.source "SourceFile"


# static fields
.field public static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field public final kotlinClass$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

.field public final metadata$delegate:Ljava/lang/Object;

.field public final multifileFacade$delegate:Ljava/lang/Object;

.field public final scope$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;

    const-string v2, "kotlinClass"

    const-string v3, "getKotlinClass()Lorg/jetbrains/kotlin/descriptors/runtime/components/ReflectKotlinClass;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v0}, Lkotlin/jvm/internal/ReflectionFactory;->property1(Lkotlin/jvm/internal/PropertyReference1Impl;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const-string/jumbo v3, "scope"

    const-string v5, "getScope()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"

    invoke-static {v1, v3, v5, v4, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KProperty1;

    move-result-object v3

    const-string v5, "members"

    const-string v6, "getMembers()Ljava/util/Collection;"

    invoke-static {v1, v5, v6, v4, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    filled-new-array {v0, v3, v1}, [Lkotlin/reflect/KProperty;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/KPackageImpl;)V
    .locals 4

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$Data;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/KPackageImpl$$Lambda$0;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/KPackageImpl$$Lambda$0;-><init>(Lkotlin/reflect/jvm/internal/KPackageImpl;I)V

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/ReflectProperties;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;->kotlinClass$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    new-instance v0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data$$Lambda$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lkotlin/reflect/jvm/internal/KPackageImpl$Data$$Lambda$1;-><init>(Lkotlin/reflect/jvm/internal/KPackageImpl$Data;I)V

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/ReflectProperties;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;->scope$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lkotlin/reflect/jvm/internal/KPackageImpl$Data$$Lambda$2;

    invoke-direct {v2, p0, p1}, Lkotlin/reflect/jvm/internal/KPackageImpl$Data$$Lambda$2;-><init>(Lkotlin/reflect/jvm/internal/KPackageImpl$Data;Lkotlin/reflect/jvm/internal/KPackageImpl;)V

    invoke-static {v0, v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;->multifileFacade$delegate:Ljava/lang/Object;

    new-instance v2, Lkotlin/reflect/jvm/internal/KPackageImpl$Data$$Lambda$1;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lkotlin/reflect/jvm/internal/KPackageImpl$Data$$Lambda$1;-><init>(Lkotlin/reflect/jvm/internal/KPackageImpl$Data;I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;->metadata$delegate:Ljava/lang/Object;

    new-instance v0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data$$Lambda$2;

    invoke-direct {v0, p1, p0}, Lkotlin/reflect/jvm/internal/KPackageImpl$Data$$Lambda$2;-><init>(Lkotlin/reflect/jvm/internal/KPackageImpl;Lkotlin/reflect/jvm/internal/KPackageImpl$Data;)V

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/ReflectProperties;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    return-void
.end method
