.class public final Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes$Companion;


# instance fields
.field public final kClass$delegate:Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes$Companion;

.field public final kotlinReflectScope$delegate:Ljava/lang/Object;

.field public final notFoundClasses:Landroidx/work/WorkQuery;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;

    const-string v2, "kClass"

    const-string v3, "getKClass()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v0}, Lkotlin/jvm/internal/ReflectionFactory;->property1(Lkotlin/jvm/internal/PropertyReference1Impl;)Lkotlin/reflect/KProperty1;

    move-result-object v5

    const-string v0, "kProperty"

    const-string v3, "getKProperty()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"

    invoke-static {v1, v0, v3, v4, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KProperty1;

    move-result-object v6

    const-string v0, "kProperty0"

    const-string v3, "getKProperty0()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"

    invoke-static {v1, v0, v3, v4, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KProperty1;

    move-result-object v7

    const-string v0, "kProperty1"

    const-string v3, "getKProperty1()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"

    invoke-static {v1, v0, v3, v4, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KProperty1;

    move-result-object v8

    const-string v0, "kProperty2"

    const-string v3, "getKProperty2()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"

    invoke-static {v1, v0, v3, v4, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KProperty1;

    move-result-object v9

    const-string v0, "kMutableProperty0"

    const-string v3, "getKMutableProperty0()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"

    invoke-static {v1, v0, v3, v4, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KProperty1;

    move-result-object v10

    const-string v0, "kMutableProperty1"

    const-string v3, "getKMutableProperty1()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"

    invoke-static {v1, v0, v3, v4, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KProperty1;

    move-result-object v11

    const-string v0, "kMutableProperty2"

    const-string v3, "getKMutableProperty2()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"

    invoke-static {v1, v0, v3, v4, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KProperty1;

    move-result-object v12

    filled-new-array/range {v5 .. v12}, [Lkotlin/reflect/KProperty;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;->Companion:Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;Landroidx/work/WorkQuery;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;->notFoundClasses:Landroidx/work/WorkQuery;

    sget-object p2, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes$$Lambda$0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes$$Lambda$0;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;I)V

    invoke-static {p2, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;->kotlinReflectScope$delegate:Ljava/lang/Object;

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes$Companion;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;->kClass$delegate:Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes$Companion;

    return-void
.end method
