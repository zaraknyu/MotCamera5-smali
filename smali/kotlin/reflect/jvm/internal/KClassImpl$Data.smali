.class public final Lkotlin/reflect/jvm/internal/KClassImpl$Data;
.super Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$Data;
.source "SourceFile"


# static fields
.field public static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field public final allNonStaticMembers$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

.field public final allStaticMembers$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

.field public final declaredNonStaticMembers$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

.field public final declaredStaticMembers$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

.field public final descriptor$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

.field public final inheritedNonStaticMembers$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

.field public final inheritedStaticMembers$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

.field public final qualifiedName$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

.field public final simpleName$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lkotlin/reflect/jvm/internal/KClassImpl$Data;

    const-string v2, "descriptor"

    const-string v3, "getDescriptor()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v0}, Lkotlin/jvm/internal/ReflectionFactory;->property1(Lkotlin/jvm/internal/PropertyReference1Impl;)Lkotlin/reflect/KProperty1;

    move-result-object v5

    const-string v0, "annotations"

    const-string v3, "getAnnotations()Ljava/util/List;"

    invoke-static {v1, v0, v3, v4, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KProperty1;

    move-result-object v6

    const-string/jumbo v0, "simpleName"

    const-string v3, "getSimpleName()Ljava/lang/String;"

    invoke-static {v1, v0, v3, v4, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KProperty1;

    move-result-object v7

    const-string/jumbo v0, "qualifiedName"

    const-string v3, "getQualifiedName()Ljava/lang/String;"

    invoke-static {v1, v0, v3, v4, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KProperty1;

    move-result-object v8

    const-string v0, "constructors"

    const-string v3, "getConstructors()Ljava/util/Collection;"

    invoke-static {v1, v0, v3, v4, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KProperty1;

    move-result-object v9

    const-string v0, "nestedClasses"

    const-string v3, "getNestedClasses()Ljava/util/Collection;"

    invoke-static {v1, v0, v3, v4, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KProperty1;

    move-result-object v10

    const-string/jumbo v0, "typeParameters"

    const-string v3, "getTypeParameters()Ljava/util/List;"

    invoke-static {v1, v0, v3, v4, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KProperty1;

    move-result-object v11

    const-string/jumbo v0, "supertypes"

    const-string v3, "getSupertypes()Ljava/util/List;"

    invoke-static {v1, v0, v3, v4, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KProperty1;

    move-result-object v12

    const-string/jumbo v0, "sealedSubclasses"

    const-string v3, "getSealedSubclasses()Ljava/util/List;"

    invoke-static {v1, v0, v3, v4, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KProperty1;

    move-result-object v13

    const-string v0, "declaredNonStaticMembers"

    const-string v3, "getDeclaredNonStaticMembers()Ljava/util/Collection;"

    invoke-static {v1, v0, v3, v4, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KProperty1;

    move-result-object v14

    const-string v0, "declaredStaticMembers"

    const-string v3, "getDeclaredStaticMembers()Ljava/util/Collection;"

    invoke-static {v1, v0, v3, v4, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KProperty1;

    move-result-object v15

    const-string v0, "inheritedNonStaticMembers"

    const-string v3, "getInheritedNonStaticMembers()Ljava/util/Collection;"

    invoke-static {v1, v0, v3, v4, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KProperty1;

    move-result-object v16

    const-string v0, "inheritedStaticMembers"

    const-string v3, "getInheritedStaticMembers()Ljava/util/Collection;"

    invoke-static {v1, v0, v3, v4, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KProperty1;

    move-result-object v17

    const-string v0, "allNonStaticMembers"

    const-string v3, "getAllNonStaticMembers()Ljava/util/Collection;"

    invoke-static {v1, v0, v3, v4, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KProperty1;

    move-result-object v18

    const-string v0, "allStaticMembers"

    const-string v3, "getAllStaticMembers()Ljava/util/Collection;"

    invoke-static {v1, v0, v3, v4, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KProperty1;

    move-result-object v19

    const-string v0, "declaredMembers"

    const-string v3, "getDeclaredMembers()Ljava/util/Collection;"

    invoke-static {v1, v0, v3, v4, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KProperty1;

    move-result-object v20

    const-string v0, "allMembers"

    const-string v3, "getAllMembers()Ljava/util/Collection;"

    invoke-static {v1, v0, v3, v4, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KProperty1;

    move-result-object v21

    filled-new-array/range {v5 .. v21}, [Lkotlin/reflect/KProperty;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/KClassImpl$Data;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/KClassImpl;)V
    .locals 4

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$Data;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/KClassImpl$$Lambda$0;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/KClassImpl$$Lambda$0;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl;I)V

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/ReflectProperties;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data;->descriptor$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    new-instance v0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$1;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl$Data;I)V

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/ReflectProperties;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    new-instance v0, Lkotlin/reflect/jvm/internal/KClassImpl$$Lambda$0;

    invoke-direct {v0, p1, p0}, Lkotlin/reflect/jvm/internal/KClassImpl$$Lambda$0;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl;Lkotlin/reflect/jvm/internal/KClassImpl$Data;)V

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/ReflectProperties;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data;->simpleName$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    new-instance v0, Lkotlin/reflect/jvm/internal/KClassImpl$$Lambda$0;

    const/4 v2, 0x7

    invoke-direct {v0, p1, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$$Lambda$0;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl;I)V

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/ReflectProperties;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data;->qualifiedName$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    new-instance v0, Lkotlin/reflect/jvm/internal/KClassImpl$$Lambda$0;

    const/16 v2, 0x8

    invoke-direct {v0, p1, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$$Lambda$0;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl;I)V

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/ReflectProperties;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    new-instance v0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$1;

    const/4 v2, 0x5

    invoke-direct {v0, p0, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$1;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl$Data;I)V

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/ReflectProperties;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$6;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$6;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl$Data;Lkotlin/reflect/jvm/internal/KClassImpl;I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance v0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$6;

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$6;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl$Data;Lkotlin/reflect/jvm/internal/KClassImpl;I)V

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/ReflectProperties;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    new-instance v0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$6;

    const/4 v2, 0x2

    invoke-direct {v0, p0, p1, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$6;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl$Data;Lkotlin/reflect/jvm/internal/KClassImpl;I)V

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/ReflectProperties;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    new-instance v0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$1;

    const/4 v2, 0x6

    invoke-direct {v0, p0, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$1;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl$Data;I)V

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/ReflectProperties;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    new-instance v0, Lkotlin/reflect/jvm/internal/KClassImpl$$Lambda$0;

    const/4 v2, 0x2

    invoke-direct {v0, p1, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$$Lambda$0;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl;I)V

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/ReflectProperties;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data;->declaredNonStaticMembers$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    new-instance v0, Lkotlin/reflect/jvm/internal/KClassImpl$$Lambda$0;

    const/4 v2, 0x3

    invoke-direct {v0, p1, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$$Lambda$0;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl;I)V

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/ReflectProperties;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data;->declaredStaticMembers$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    new-instance v0, Lkotlin/reflect/jvm/internal/KClassImpl$$Lambda$0;

    const/4 v2, 0x4

    invoke-direct {v0, p1, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$$Lambda$0;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl;I)V

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/ReflectProperties;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data;->inheritedNonStaticMembers$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    new-instance v0, Lkotlin/reflect/jvm/internal/KClassImpl$$Lambda$0;

    const/4 v2, 0x5

    invoke-direct {v0, p1, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$$Lambda$0;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl;I)V

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/ReflectProperties;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data;->inheritedStaticMembers$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    new-instance p1, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$1;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl$Data;I)V

    invoke-static {v1, p1}, Lkotlin/reflect/jvm/internal/ReflectProperties;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data;->allNonStaticMembers$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    new-instance p1, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$1;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$1;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl$Data;I)V

    invoke-static {v1, p1}, Lkotlin/reflect/jvm/internal/ReflectProperties;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data;->allStaticMembers$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    new-instance p1, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$1;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$1;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl$Data;I)V

    invoke-static {v1, p1}, Lkotlin/reflect/jvm/internal/ReflectProperties;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    new-instance p1, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$1;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$1;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl$Data;I)V

    invoke-static {v1, p1}, Lkotlin/reflect/jvm/internal/ReflectProperties;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    return-void
.end method


# virtual methods
.method public final getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;
    .locals 2

    sget-object v0, Lkotlin/reflect/jvm/internal/KClassImpl$Data;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data;->descriptor$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    return-object p0
.end method
