.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;


# instance fields
.field public final classDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor;

.field public final scopeFactory:Lkotlin/jvm/functions/Function1;

.field public final scopeForOwnerModule$delegate:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v1, "getScopeForOwnerModule()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"

    const/4 v2, 0x0

    const-class v3, Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;

    const-string/jumbo v4, "scopeForOwnerModule"

    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->property1(Lkotlin/jvm/internal/PropertyReference1Impl;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    filled-new-array {v0}, [Lkotlin/reflect/KProperty;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;-><init>(I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;->Companion:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor;Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;->classDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;->scopeFactory:Lkotlin/jvm/functions/Function1;

    new-instance p1, Lkotlin/reflect/jvm/internal/KTypeParameterImpl$$Lambda$0;

    const/4 p3, 0x7

    invoke-direct {p1, p3, p0}, Lkotlin/reflect/jvm/internal/KTypeParameterImpl$$Lambda$0;-><init>(ILjava/lang/Object;)V

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;

    invoke-direct {p3, p2, p1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/jvm/functions/Function0;)V

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;->scopeForOwnerModule$delegate:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;

    return-void
.end method
